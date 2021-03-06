#!/bin/bash

# Defining color variables
COOL="^c#83a598^"
CI=""
WARN="^c#fabd2f^"
WI=""
DANGER="^c#fb4934^"
DI=" "

# Fetching current CPU state
TEMP="$(sensors | grep -e 'Composite\:' | awk '{print $2}' | sed 's/[^0-9\.]//g;s/\.[0-9]//g')"

[[ $TEMP -lt 30 ]] && STATE="${COOL}" && TSTATE="${CI}"
[[ $TEMP -gt 30 ]] && [ $TEMP -lt 70 ] && STATE="${WARN}" && TSTATE="${WI}"
[[ $TEMP -ge 70 ]] && STATE="${DANGER}" && TSTATE="${DI}"

echo "${STATE}${TEMP}°C ${TSTATE}^d^  "

case $BLOCK_BUTTON in
  1) notify-send "OASKDOASD" ;;
esac
