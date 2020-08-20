#!/bin/bash
bspc rule -a scratchy state=floating sticky=on locked=off
id=$(xdo id -N scratchy);
[ -z "$id" ] && kitty --class=scratchy --name=scratchy python;

action='hide';
if [[ $(xprop -id $id | awk '/window state: / {print $3}') == 'Withdrawn' ]]; then
					  action='show'
fi

xdo $action -N scratchy
