#!/bin/bash

######################
# FL-SUITE MODULE #
######################

# Name of the module directory
MODULE="FL-SUITE"

# STATION INFO (Gets information from the .station-info file in the user home directory)
MYCALL=$(head -n 1 $HOME/.station-info)
MYNAME=$(head -n 2 $HOME/.station-info | tail -n 1)
MYCITY=$(head -n 3 $HOME/.station-info | tail -n 1)
MYST=$(head -n 4 $HOME/.station-info | tail -n 1)
MYQTH="${MYCITY}, ${MYST}"
MYLOC=$(head -n 5 $HOME/.station-info | tail -n 1)

ARCOS_DATA=/ARCOS-DATA
MODULE_DIR=$ARCOS_DATA/QRV/$MYCALL/arcos-linux-modules/USER/$MODULE
LOGFILE=$MODULE_DIR/$MODULE.log
SAVE_DIR=$ARCOS_DATA/QRV/$MYCALL/SAVED/$MODULE
########################

### MODULE COMMANDS FUNCTION ###
module_commands () {
	sed \
	"s/\$MYCALL/$MYCALL/g;
	 s/\$MYLOC/$MYLOC/g;
	 s/\$MYQTH/$MYQTH/g;
	 s/\$MYNAME/$MYNAME/g;" $MODULE_DIR/pkg/fldigi_def.tpl > $MODULE_DIR/pkg/fldigi_def.xml
	sed \
	"s/\$MYCALL/$MYCALL/g" $MODULE_DIR/pkg/notify.prefs.tpl > $MODULE_DIR/pkg/notify.prefs
	cp $MODULE_DIR/pkg/*.xml $HOME/.fldigi/
	cp $MODULE_DIR/pkg/*.prefs $HOME/.fldigi/
	cp $MODULE_DIR/pkg/macros/* $HOME/.fldigi/macros/
##################################################
}

# Execute the module commands, and notify the user upon failure
module_commands > $LOGFILE 2>&1 || notify-send --icon=error "$MODULE" "$MODULE module failed!"
