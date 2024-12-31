#!/bin/bash

######################
# FIELD-OPS MODULE #
######################

# Name of the module directory
MODULE="FIELD-OPS"

# STATION INFO (Gets information from the .station-info file in the user home directory)
MYCALL=$(head -n 1 $HOME/.station-info)
MYNAME=$(head -n 2 $HOME/.station-info | tail -n 1)
MYCITY=$(head -n 3 $HOME/.station-info | tail -n 1)
MYST=$(head -n 4 $HOME/.station-info | tail -n 1)
MYQTH="${MYCITY}, ${MYST}"
MYLOC=$(head -n 5 $HOME/.station-info | tail -n 1)

# PATHS (Defines paths referencein the module)
ARCOS_DATA=/ARCOS-DATA
MODULE_DIR=$ARCOS_DATA/QRV/$MYCALL/arcos-linux-modules/USER/$MODULE
LOGFILE=$MODULE_DIR/$MODULE.log
SAVE_DIR=$ARCOS_DATA/QRV/$MYCALL/SAVED/$MODULE
########################

load_module() {
    local _MODULE=$1
    $ARCOS_DATA/QRV/$MYCALL/arcos-linux-modules/USER/$_MODULE/pkg/00_$_MODULE.sh
}

# Function to wait for rigctl to be up and running
wait_for_rigctl() {
    local timeout=30  # Maximum time to wait in seconds
    local elapsed=0
    local sleep_interval=2

    while ! rigctl -m 4 v &>/dev/null; do
        echo "Waiting for rigctl to be ready..."
        sleep $sleep_interval
        elapsed=$((elapsed + sleep_interval))
        if [ $elapsed -ge $timeout ]; then
            echo "Timeout reached: rigctl did not respond."
            return 1
        fi
    done
    echo "rigctl is ready."
    return 0
}

### MODULE COMMANDS FUNCTION ###
module_commands() {

    # Load flrig and desktop
    LOAD=$(load_module FLRIG)
    LOAD=$(load_module DESKTOP)

    # Wait for rigctl to be up and running
    if wait_for_rigctl; then
        # Set the frequency if rigctl is ready
        rigctl -m 4 F 7110000
    else
        echo "Failed to set frequency: rigctl is not ready."
    fi
}

# Execute the module commands, and notify the user upon failure
module_commands > $LOGFILE 2>&1 || notify-send --icon=error "$MODULE" "$MODULE module failed!"
