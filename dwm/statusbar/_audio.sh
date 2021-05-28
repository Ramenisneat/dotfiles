#!/bin/bash

# Volume state output
VOL="$(amixer get Master | awk 'NR==6 {print $5}' | sed 's/\[//;s/\]//;s/%//')"
MUTE="$(amixer get Master | awk 'NR==6 {print $6}' | sed 's/[^a-z]//g')"


if [[ $MUTE == 'off' ]]; then  
  VOLSTATE="婢"
elif [[ $VOL -le 30 ]]; then
  VOLSTATE="奄" # ﱝ
elif [[ $VOL -le 70 ]]; then
  VOLSTATE="奔"
elif [[ $VOL -ge 70 ]]; then
  VOLSTATE="墳"
else
  VOLSTATE="?"
fi

echo " ${VOL}% ${VOLSTATE}  "
