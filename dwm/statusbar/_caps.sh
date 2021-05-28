#!/bin/bash

#get caps lock status
CAP="$(xset q | awk 'NR==4 {print $4}')"

if [[ $CAP == 'on' ]]; then
	echo "^c#fb4934^CAPS LOCK "
fi
