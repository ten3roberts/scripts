#!/bin/bash


status="$(cat /sys/class/power_supply/AC/online)"
battery="$(cat /sys/class/power_supply/BAT0/capacity)"
timer="$(acpi -b | grep "Battery" | awk '{print $5}' | cut -c 1-5)"
if [ "${status}" == 1 ]; then
    echo "${battery}%"
fi
