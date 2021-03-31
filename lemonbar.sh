#!/bin/bash


while true; do
  wm_status=""
  IFS=':' read -a array <<< "$line"
  for element in "${array[@]}"; do
    if [[ $element =~ ^D ]]; then
      wm_status="$wm_status ^fg(white)${element:1}"
    elif [[ $element =~ ^d ]]; then
      wm_status="$wm_status ^ca(1, bspc use ${element:1})^fg(darkgray)${element:1}^ca()"
    elif [[ $element =~ ^E ]]; then
      wm_status="$wm_status ^ca(1, bspc use ${element:1})^fg(#6b6b6b)${element:1}^ca()"
    elif [[ $element =~ ^L ]]; then
      wm_status="$wm_status • ^ca(1, bspc cycle_layout)^fg(white)${element:1}^ca()"
    fi
  done
  echo $wm_status
done
