#/bin/sh

cycle_next() {
    case `display` in
        default) set_layout "monocle";;
        monocle) set_layout "tall";;
        tall) set_layout "default";;
        *) set_layout "default";;
    esac
}

cycle_prev() {
    case `display` in
        default) set_layout "tall";;
        monocle) set_layout "default";;
        tall) set_layout "monocle";;
        *) set_layout "default";;
    esac
}

set_layout() {
    echo "New layout: $1"
    case "$1" in
        monocle) bspc desktop -l monocle;;
        default) bsp-layout remove `bspc query --names -D -d focused`;bspc desktop -l tiled;;
        *) bspc desktop -l tiled; bsp-layout set "$1";;
    esac
}

display()  {
    case `bspc query -T -d | jq -r .layout` in
        monocle) echo "monocle";;
        *) bsp-layout get `bspc query --names -D -d focused`;;
    esac
}

icon() {
    case `display` in
        default) echo "";;
        monocle) echo "";;
        tall) echo "";;
        *) ""
    esac
}

case "$1" in
    display) display;;
    icon) icon;;
    next) cycle_next;;
    prev) cycle_prev;;
    set) set_layout "$2";;
    *) echo "Unknown command";;
esac
