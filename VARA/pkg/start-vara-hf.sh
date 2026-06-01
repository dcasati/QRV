#!/bin/bash

# this is a hack to work with the Digirig interface and G90
gnome-terminal --geometry=80x10 --class=vara.exe --hide-menubar --title="RIGCTLD" --zoom=0.75 -- sh -c 'echo "RIGCTLD for VARA-HF...\nLeave open while using VARA-HF."; rigctld --model=4' &

sudo systemctl restart pat@user.service

sleep 1

# Route PipeWire/PulseAudio to the Digirig (C-Media USB PnP Sound Device)
RADIO_SINK="alsa_output.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.analog-stereo"
RADIO_SOURCE="alsa_input.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.mono-fallback"

if [ -n "$RADIO_SINK" ]; then
    echo "Setting PulseAudio default sink to: $RADIO_SINK"
    pactl set-default-sink "$RADIO_SINK"
else
    echo "WARNING: No USB audio sink found. VARA audio may not reach the radio."
fi

if [ -n "$RADIO_SOURCE" ]; then
    echo "Setting PulseAudio default source to: $RADIO_SOURCE"
    pactl set-default-source "$RADIO_SOURCE"
else
    echo "WARNING: No USB audio source found. VARA audio may not reach the radio."
fi

env WINEPREFIX="/home/user/.wine_vara_32" wine /home/user/.wine_vara_32/drive_c/VARA/VARA.exe > /dev/null 2>&1 &
