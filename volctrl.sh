case $1 in
    toggle) amixer set Master toggle ;;
    mute) amixer set Master mut ;;
    up) amixer set Master 2%+ ;;
    down) amixer set Master 2%- ;;
esac

pkill -RTMIN+10 dwmblocks
