#!/usr/bin/python3
# A companion program for GQRX.
# This allows for GQRX to be used as a waterfall
# on the Xiegu-G90. Our input is the I/Q from the 
# G90.

import socket
import xmlrpc.client
import time

# Configuration
GQRX_HOST = 'localhost'
GQRX_PORT = 7356
FLRIG_URL = 'http://localhost:12345'  # Adjust if necessary

def get_gqrx_frequency():
    """
    Retrieve the frequency from GQRX.
    """
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((GQRX_HOST, GQRX_PORT))
            s.sendall(b'f\n')  # Command to get the frequency
            data = s.recv(1024).decode().strip()
            if data.isdigit():
                return int(data)
            else:
                print(f"Unexpected data from Gqrx: {data}")
                return None
    except Exception as e:
        print(f"Error connecting to Gqrx: {e}")
        return None

def set_gqrx_frequency(freq):
    """
    Set the frequency in GQRX.
    """
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((GQRX_HOST, GQRX_PORT))
            command = f"F {freq}\n".encode()  # Command to set the frequency
            s.sendall(command)
            print(f"Set GQRX frequency to: {freq} Hz")
    except Exception as e:
        print(f"Error setting GQRX frequency: {e}")


def get_flrig_frequency():
    """
    Retrieve the frequency from flrig using XML-RPC.
    """
    try:
        client = xmlrpc.client.ServerProxy(FLRIG_URL)
        return float(client.rig.get_vfo())
    except Exception as e:
        print(f"Error connecting to flrig: {e} to get its frequency")
        return None

def set_flrig_frequency(freq):
    """
    Set the frequency in flrig using XML-RPC.
    """
    try:
        client = xmlrpc.client.ServerProxy(FLRIG_URL)
        client.rig.set_frequency(float(freq))
        print(f"Set flrig frequency to: {freq} Hz")
    except Exception as e:
        print(f"Error connecting to flrig: {e} to set the frequency")

def main():
    """
    Main loop to synchronize frequency between GQRX and flrig.
    GQRX will always follow flrig's frequency.
    """
    # Initialize GQRX to match flrig's frequency
    flrig_freq = get_flrig_frequency()
    if flrig_freq is not None:
        print(f"Initializing: Setting GQRX frequency to match flrig: {flrig_freq} Hz")
        set_gqrx_frequency(flrig_freq)
    else:
        print("Error: Unable to retrieve initial frequency from flrig.")
        return

    last_flrig_freq = flrig_freq  # Track the last known flrig frequency

    while True:
        flrig_freq = get_flrig_frequency()

        # Update GQRX if flrig frequency changes
        if flrig_freq is not None and flrig_freq != last_flrig_freq:
            print(f"Updating GQRX frequency: flrig -> {flrig_freq}")
            set_gqrx_frequency(flrig_freq)
            last_flrig_freq = flrig_freq

        time.sleep(1)  # Polling interval



if __name__ == "__main__":
    main()

