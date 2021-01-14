#/bin/sh
# This is a script to run after graphical login to setup things like mouse acceleration, key repeat rate and many others

# Load XResources
xrdb $HOME/.config/xresources/Xresources
# Reload pywal colorscheme to xrdb
xrdb -merge $HOME/.cache/wal/colors.Xresources

# Update rust
rustup update &
# Remap the forgotten key to escape for Evil
setxkbmap -option caps:escape
# Make repeating keys faster
xset r rate 250 50
# Disable mouse acceleration
maccel G403 -1

# ksuperkey
# Autolaunch programs

# Start CKB-next
# killall ckb-next
# ckb-next --background &

killall redshift-gtk
redshift-gtk &

randbg
killall dunst
dunst &

picom &
dwmblocks &
light-locker &

disown
