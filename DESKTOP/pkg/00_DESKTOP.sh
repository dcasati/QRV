#!/bin/bash

######################
# DESKTOP MODULE #
######################

# Nmae of the module directory
MODULE="DESKTOP"

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

### MODULE COMMANDS FUNCTION ###
module_commands () {

dconf write /org/cinnamon/desktop/wm/preferences/num-workspaces 4
dconf write /org/cinnamon/desktop/wm/preferences/workspace-names "['FLSUITE', 'JS8CALL', 'PAT', 'RIGCONTROL']"

fldigi &
sleep 5

wmctrl -r "fldigi" -t 0
wmctrl -r "FLMSG" -t 0
wmctrl -r "FLAMP" -t 0

wmctrl -r "JS8Call" -t 1
wmctrl -r "Pat" -t 2

wmctrl -r "VARA" -t 3
wmctrl -r "flrig" -t 3

} 

# Execute the module commands, and notify the user upon failure
module_commands > $LOGFILE 2>&1 || notify-send --icon=error "$MODULE" "$MODULE module failed!"
