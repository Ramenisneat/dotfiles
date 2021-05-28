#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ;
do
	[ -x "$f" ] && . "$f"
	done
	unsetf
fi

#adding in sone environment varibales for Qt and GTK
export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=1
export QT_FONT_DPI=96

#export QT_QPA_PLATFORMTHEME=qtSct

# Starting applications a& DWM
killall picom;
picom &

~/.fehbg &
dwmblocks &
exec dwm
