#!/bin/bash

# Battery stuff

CAP="$(cat /sys/class/power_supply/BAT1/capacity)"
STATUS="$(cat /sys/class/power_supply/BAT1/status)"
STATE="^c#d3869b^"

if [ "$STATUS" = "Full" ]; then
  ICON=""; STATE="^c#b8bb26^"
elif [ "$STATUS" = "Discharging" ]; then
    if [ "$CAP" -ge 90 ]; then
        ICON=""; STATE="^c#b8bb26^"
    elif [ "$CAP" -ge 80 ]; then
        ICON=""; STATE="^c#b8bb26^"
    elif [ "$CAP" -ge 70 ]; then
        ICON=""; STATE="^c#b8bb26^"
    elif [ "$CAP" -ge 60 ]; then
        ICON=""; STATE="^c#fabd2f^"
    elif [ "$CAP" -ge 50 ]; then
        ICON=""; STATE="^c#fabd2f^"
    elif [ "$CAP" -ge 40 ]; then
        ICON=""; STATE="^c#fabd2f^"
    elif [ "$CAP" -ge 30 ]; then
        ICON=""; STATE="^c#fb4934^"
    elif [ "$CAP" -ge 20 ]; then
        ICON=""; STATE="^c#fb4934^"
    elif [ "$CAP" -ge 10 ]; then
        ICON=""; STATE="^c#fb4934^"
    else
        ICON=""; STATE="^c#fb4934^"
    fi
elif [ "$STATUS" = "Not charging"  ]; then
    ICON=""
elif [ "$STATUS" = "Charging" ]; then
    ICON=""
fi

echo "${STATE}${CAP}% ${ICON}^d^ "
