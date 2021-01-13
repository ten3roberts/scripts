#!/bin/sh
SCROTCMD="scrot $HOME/Pictures/screenshots/%F_%H-%M-%S_scrot.png"
case "$1" in
    region) sleep 0.2 && $SCROTCMD --line style=dash -sf -e 'xclip -selection c -t image/png < $f' && notify-send "Captured region" ;;
    screen) $SCROTCMD -m && notify-send "Captured screen" ;;
    *) echo "Unknown option $1" ;;
esac

