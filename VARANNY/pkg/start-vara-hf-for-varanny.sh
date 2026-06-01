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

# Route PipeWire/PulseAudio to the Digirig (C-Media USB PnP Sound Device)
RADIO_SINK="alsa_output.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.analog-stereo"
RADIO_SOURCE="alsa_input.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.mono-fallback"

if [ -n "$RADIO_SINK" ]; then
    echo "Setting PulseAudio default sink to: $RADIO_SINK"
    pactl set-default-sink "$RADIO_SINK"
    # Also move any existing VARA audio stream to the radio sink
    pactl list sink-inputs short 2>/dev/null | awk '{print $1}' | while read -r input; do
        pactl move-sink-input "$input" "$RADIO_SINK" 2>/dev/null
    done
else
    echo "WARNING: No USB audio sink found. VARA audio may not reach the radio."
fi

if [ -n "$RADIO_SOURCE" ]; then
    echo "Setting PulseAudio default source to: $RADIO_SOURCE"
    pactl set-default-source "$RADIO_SOURCE"
else
    echo "WARNING: No USB audio source found. VARA audio may not reach the radio."
fi

