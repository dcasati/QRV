#!/bin/bash

######################
# DIREWOLF MODULE #
######################

# Name of the module directory
MODULE="DIREWOLF"

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

ARCOS_CONFIG_DIR=/opt/arcOS/configs
########################

### MODULE COMMANDS FUNCTION ###
module_commands () {
	export MYCALL=$(head -n 1 $HOME/.station-info)
	envsubst < $MODULE_DIR/pkg/direwolf.conf > $MODULE_DIR/direwolf.conf
	sudo cp $MODULE_DIR/direwolf.conf ${ARCOS_CONFIG_DIR}/direwolf.conf
##################################################
}

# Execute the module commands, and notify the user upon failure
module_commands > $LOGFILE 2>&1 || notify-send --icon=error "$MODULE" "$MODULE module failed!"
