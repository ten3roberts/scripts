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
volraw=`pamixer --get-volume`
volume_bar=`progressbar.sh 20 + . $volraw`
dunstify -a "volume" -u low -i audio-volume-high -r "$msgId" "Volume:  $volume  $volume_bar"

pkill -RTMIN+10 dwmblocks
