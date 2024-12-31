#!/bin/bash

# Define the paths to the scripts and binaries
gqrx_bin="/usr/bin/gqrx"
gqrx_to_flrig="/opt/arcOS/bin/gqrx_to_flrig.py"
flrig_bin="/usr/bin/flrig"

# Check if gqrx is already running
if pgrep -x "$(basename $gqrx_bin)" > /dev/null; then
    echo "gqrx is already running."
else
    echo "Starting gqrx..."
    "$gqrx_bin" &
    sleep 2  # Wait a bit to ensure gqrx is up
fi

# Check if flrig is already running
if pgrep -x "$(basename $flrig_bin)" > /dev/null; then
    echo "flrig is already running."
else
    echo "flrig is not running. Stopping gqrx_to_flrig.py if running..."
    pkill -f "$gqrx_to_flrig"
    exit 1
fi

# Run gqrx_to_flrig.py
if [ -f "$gqrx_to_flrig" ]; then
    echo "Running gqrx_to_flrig.py..."
    python3 "$gqrx_to_flrig" &
else
    echo "Error: gqrx_to_flrig.py not found at $gqrx_to_flrig."
    exit 1
fi

# Keep the script running to monitor all processes (optional)
wait

