case $1 in
    toggle) pamixer -t ;;
    mute) pamixer -m ;;
    up) pamixer -i 2 ;;
    down) pamixer -d 2 ;;
esac

pkill -RTMIN+10 dwmblocks
