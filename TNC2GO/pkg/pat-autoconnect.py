#!/usr/bin/python3
import subprocess
import os
import json
import argparse
import time
import socket
import threading

LOG_FILE = "rms_log.json"  # Log file to store successful connections
VARA_LOG_FILE = "vara_output.log"

LOG_PATH = "/home/user/.local/state/pat/pat.log"

def log(message):
    """
    Log a message to both stdout and the log file.
    """
    with open(LOG_PATH, "a") as log_file:
        log_file.write(f"{message}\n")
    print(message)

def load_connection_log(file_name=LOG_FILE):
    """
    Load the connection log from a JSON file.
    Returns a dictionary of previously connected RMS stations.
    """
    if os.path.exists(file_name):
        with open(file_name, "r") as f:
            return json.load(f)
    return {}
    
def save_connection_log(connection_log):
    """
    Save the list of successfully connected RMS stations to a JSON file.
    """
    with open(LOG_FILE, "w") as f:
        json.dump(connection_log, f, indent=4)

def get_rms_within_distance(max_distance=1000, band=None, connection_log=None):
    """
    Get RMS stations within the specified distance using `pat rmslist`.
    Optionally filter by band and merge with the connection log.
    """
    try:
        command = ["pat", "rmslist", "-m", "varahf", "-s"]
        if band:
            command += ["-b", band]
        result = subprocess.run(command, capture_output=True, text=True, check=True)

        rms_list = []
        for line in result.stdout.splitlines():
            # Skip header or malformed lines
            if not line.strip() or line.startswith("Call") or line.startswith("----"):
                continue

            parts = line.split()
            if len(parts) < 8:
                continue

            try:
                distance = int(parts[2])  # Parse the distance field
                if distance <= max_distance:
                    rms_list.append({
                        "callsign": parts[0],
                        "url": parts[-1]
                    })
            except ValueError:
                continue

        # Merge with the connection log
        if connection_log:
            rms_list = merge_rms_lists(rms_list, connection_log)

        return rms_list
    except subprocess.CalledProcessError as e:
        log(f"Error running `pat rmslist`: {e}")
        return []

def set_power_level():
    """
    Adjust the TX power level for the current band.
    """
    log("Setting TX power level...")
    subprocess.run("rigctl -m 4 L RFPOWER .18", shell=True)

def monitor_vara_output():
    """
    Monitor VARA output for specific timeout errors and restart VARA if necessary.
    """
    try:
        log("Monitoring VARA output...")
        with open(VARA_LOG_FILE, "r") as log_file:
            log_file.seek(0, os.SEEK_END)
            while True:
                line = log_file.readline()
                if not line:
                    time.sleep(0.1)
                    continue
                if "connect timeout" in line.lower():
                    log("Connection timeout detected. Restarting VARA...")
                    restart_vara()
    except Exception as e:
        log(f"Error monitoring VARA output: {e}")

def restart_vara():
    """
    Restart VARA in case of critical errors.
    """
    subprocess.run("pkill -f 'VARA.exe'", shell=True)
    subprocess.Popen(
    f"env WINEPREFIX='/home/user/.wine_vara_32' wine /home/user/.wine_vara_32/drive_c/VARA/VARA.exe > {VARA_LOG_FILE} 2>&1 &",
        shell=True
    )
    wait_for_vara()

def wait_for_flrig():
    """
    Wait until flrig is running and accepting connections.
    """
    log("Waiting for flrig to start...")
    start_time = time.time()
    while time.time() - start_time < 10:
        try:
            with socket.create_connection(("localhost", 12345), timeout=1):
                log("flrig is running and accepting connections.")
                return
        except (socket.timeout, ConnectionRefusedError):
            time.sleep(1)
    raise RuntimeError("flrig did not start within 10 seconds.")

def start_rigctld():
    """
    Start rigctld and ensure it waits for flrig to be running.
    """
    wait_for_flrig()
    log("Starting rigctld...")
    subprocess.Popen("rigctld --model=4 > /dev/null 2>&1 &", shell=True)

def wait_for_vara():
    """
    Wait until VARA is running and accepting connections on port 8400.
    Restart if not available within 10 seconds.
    """
    log("Waiting for VARA to start...")
    start_time = time.time()
    while True:
        try:
            with socket.create_connection(("localhost", 8400), timeout=1):
                log("VARA is running and accepting connections on port 8400.")
                return
        except (socket.timeout, ConnectionRefusedError):
            if time.time() - start_time > 10:  # Increased timeout from 5 to 10 seconds
                raise RuntimeError("VARA did not start within 10 seconds.")
            time.sleep(1)

def cleanup():
    """
    Ensure flrig and VARA processes are terminated on exit.
    """
    log("Cleaning up VARA and flrig processes...")
    subprocess.run("pkill -f 'flrig'", shell=True)
    subprocess.run("pkill -f 'VARA.exe'", shell=True)
    subprocess.run("pkill -f 'rigctld'", shell=True)

def merge_rms_lists(rms_list, connection_log):
    """
    Merge RMS list with connection log to prioritize already connected stations.
    """
    merged_list = {rms["callsign"]: rms for rms in rms_list}

    # Add or update entries from connection log
    for callsign, url in connection_log.items():
        if callsign not in merged_list:
            merged_list[callsign] = {"callsign": callsign, "url": url}

    return list(merged_list.values())

def connect_to_best_rms(rms_list, connection_log):
    """
    Attempt to connect to the best RMS station from the filtered list.
    """
    # Prioritize stations already in the connection log
    prioritized_rms = [rms for rms in rms_list if rms["callsign"] in connection_log]
    remaining_rms = [rms for rms in rms_list if rms["callsign"] not in connection_log]
    full_rms_list = prioritized_rms + remaining_rms

    set_power_level()  # Set power level for the band

    for rms in full_rms_list:
        callsign = rms["callsign"]
        dial_url = rms["url"]
        command = f"pat connect '{dial_url}'"
        log(f"Attempting to connect to {callsign} using: {command}")

        try:
            # Open process with redirection to log file
            with subprocess.Popen(
                command,
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                universal_newlines=True
            ) as process:
                output, error = process.communicate()  # Get both stdout and stderr

                # Log the full output and any errors
                if output:
                    log(f"Command Output: {output}")
                if error:
                    log(f"Command Error: {error}")

                # Check for success in the output
                if output and "Connected to" in output:
                    log(f"Successfully connected to {callsign}")
                    connection_log[callsign] = dial_url
                    save_connection_log(connection_log)
                    return True
                else:
                    log(f"Failed to connect to {callsign}. Output: {output or 'No output received'}")

        except Exception as e:
            log(f"Connection error: {e}")

    return False

def main():
    # Start flrig and VARA
    subprocess.Popen("flrig > /dev/null 2>&1 &", shell=True)
    start_rigctld()
    subprocess.Popen(
        f"env WINEPREFIX='/home/user/.wine_vara_32' wine /home/user/.wine_vara_32/drive_c/VARA/VARA.exe > {VARA_LOG_FILE} 2>&1 &",
        shell=True
    )
    wait_for_vara()
    monitor_thread = threading.Thread(target=monitor_vara_output, daemon=True)
    monitor_thread.start()

    # Parse command-line arguments
    parser = argparse.ArgumentParser(description="Auto-connect to the best RMS station.")
    parser.add_argument(
        "--input-file",
        help="Path to the input file containing RMS log data. If provided, ignores bands and uses the log data."
    )
    parser.add_argument(
        "--bands",
        nargs="+",
        default=["40m"],
        help="Fallback bands to filter RMS stations (e.g., 30m 40m). Ignored if input file is used."
    )
    args = parser.parse_args()

    try:
        connection_log = load_connection_log()  # Default connection log file

        # Use the input file if provided
        if args.input_file:
            log(f"Loading RMS log data from {args.input_file}...")
            rms_log_data = load_connection_log(file_name=args.input_file)
            log(f"Loaded RMS log data: {rms_log_data}")

            # Attempt connections using the RMS log data
            log("\nAttempting connections based on RMS log data...")
            for callsign, dial_url in rms_log_data.items():
                log(f"Attempting to connect to {callsign} using: {dial_url}")
                if connect_to_best_rms([{"callsign": callsign, "url": dial_url}], connection_log):
                    log(f"Successfully connected to {callsign} from RMS log.")
                    return  # Stop further attempts if successful
            log("\nNo successful connections from RMS log. Fetching new RMS stations...")
        else:
            log("\nNo input file provided. Fetching RMS stations using `pat rmslist`...")

        # Fallback: Fetch RMS stations for each band and attempt connections
        for band in args.bands:
            log(f"\nChecking band: {band}")
            rms_list = get_rms_within_distance(1000, band=band)
            if rms_list:
                log("Filtered RMS List (Prioritized):")
                for rms in rms_list:
                    log(f"\"{rms['callsign']}\": \"{rms['url']}\"")

                log("\nStarting connection attempts...")
                if connect_to_best_rms(rms_list, connection_log):
                    log(f"Connection successful on band {band}. Stopping further attempts.")
                    break
            else:
                log(f"No RMS stations found for band {band} within the specified distance.")
    except KeyboardInterrupt:
        log("\nProgram interrupted by user. Exiting cleanly...")
    finally:
        cleanup()



if __name__ == "__main__":
    main()


