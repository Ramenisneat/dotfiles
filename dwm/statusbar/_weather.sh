# _weather.sh

# Weather info

TEMP="$(curl -s curl -s http://wttr.in/Tyler+TX?format\=1\&u)"

[ "$TEMP" ] && 
TEMP=$(echo $TEMP | sed 's/[^0-9+°A-Z\-]//g') &&
ICON=$(echo $TEMP | sed 's/[0-9+°A-Z]//g') ;

[ "$TEMP" ] && echo "${TEMP} ${ICON} "
[ "$TEMP" ] || echo "勒 "
