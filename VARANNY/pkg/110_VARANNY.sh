#!/bin/bash

######################
# VARANNY MODULE #
######################

# Name of the module directory
MODULE="VARANNY"

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

ARCOS_BIN_DIR=/opt/arcOS/bin
ARCOS_CONFIG_DIR=/opt/arcOS/configs
########################

### MODULE COMMANDS FUNCTION ###
module_commands () {
	sudo cp $MODULE_DIR/pkg/varanny.json $ARCOS_CONFIG_DIR/varanny.json
	sudo cp $MODULE_DIR/varanny/varanny $ARCOS_BIN_DIR/varanny
	for filename in start-vara-fm-for-varanny.sh start-vara-hf-for-varanny.sh; do \
		sudo cp $MODULE_DIR/pkg/$filename $ARCOS_BIN_DIR/$filename; \
	done

##################################################
}

# Execute the module commands, and notify the user upon failure
module_commands > $LOGFILE 2>&1 || notify-send --icon=error "$MODULE" "$MODULE module failed!"
