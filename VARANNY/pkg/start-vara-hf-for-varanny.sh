#!/bin/bash

# Function to check if VARA is listening on port 8400
is_port_listening() {
    nc -z localhost 8400 2>/dev/null
    return $?
}

# Stop the current services and kill VARA
sudo systemctl stop pat@user
pkill VARA

# Start VARA
env WINEPREFIX="/home/user/.wine_vara_32" wine $1 &

# Wait for VARA to listen on port 8400
timeout=32
elapsed=0
sleep_interval=2

while ! is_port_listening; do
    echo "Waiting for VARA to listen on port 8400..."
    sleep $sleep_interval
    elapsed=$((elapsed + sleep_interval))
    if [ $elapsed -ge $timeout ]; then
        echo "Timeout reached: VARA did not start listening on port 8400."
        pkill VARA
        echo "Restarting VARA..."
        env WINEPREFIX="/home/user/.wine_vara_32" wine $1 &
        elapsed=0
    fi
done

echo "VARA is now listening on port 8400."

