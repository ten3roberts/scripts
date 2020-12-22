#/bin/bash
case $1 in
    toggle) pamixer -t ;;
    mute) pamixer -m ;;
    up) pamixer -i 2 ;;
    down) pamixer -d 2 ;;
esac

# Arbitrary but unique message id
msgId="991049"

volume=`pamixer --get-volume-human`
dunstify -a "volume" -u low -i audio-volume-high -r "$msgId" "Volume:  $volume"

pkill -RTMIN+10 dwmblocks
