#/bin/sh
# This is a script to run after graphical login to setup things like mouse acceleration, key repeat rate and many others

# This requires the loading of .zprofile to set path variables accordingly

# Just make sure the DE initializes it's configuration first
# Semaphores are for newbs
sleep 5

# Update rust
rustup update
# Remap the forgotten key to escape for Evil
setxkbmap -option caps:escape
# Make repeating keys faster
xset r rate 250 50
# Disable mouse acceleration
maccel G403 -1

ksuperkey
# Autolaunch programs

# Start CKB-next
killall ckb-next
ckb-next --background &

killall redshift-gtk
redshift-gtk &
disown
exit
