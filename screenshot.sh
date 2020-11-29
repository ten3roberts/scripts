#!/bin/sh
SCROTCMD="scrot $HOME/Pictures/screenshots/%F_scrot.png"
case "$1" in
    region) $SCROTCMD --line style=dash -sf ;;
    screen) $SCROTCMD -m ;;
    *) echo "Unknown option $1" ;;
esac

