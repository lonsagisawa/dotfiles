#!/bin/bash

# gtk3-nocsd
export GTK_CSD=0
export LD_PRELOAD=/usr/lib/libgtk3-nocsd.so.0

# Pre-Desktop daemon/settings
exec pulseaudio &
exec xgamma -gamma 0.8 &
exec xfce4-power-manager &
exec /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
exec light-locker &

# IBus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
exec ibus-daemon -drx &

# tray apps
exec nm-applet --sm-disable &
exec urxvtd -q -f -o &
# exec volumeicon &
# exec pamac-tray &
exec ~/.dropbox-dist/dropboxd &

# Post-Desktop apps
exec compton &
exec nitrogen --restore &
