#!/bin/bash

# gtk3-nocsd
#export GTK_CSD=0
#export LD_PRELOAD=/usr/lib/libgtk3-nocsd.so.0

# Pre-Desktop daemon/settings
#exec pulseaudio &
exec xgamma -gamma 0.85 &
exec xfce4-power-manager &
#exec /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
exec light-locker &

# IBus
exec ibus-daemon -drx &

# tray apps
#exec nm-applet --sm-disable &
#exec urxvtd -q -f -o &
# exec volumeicon &
# exec pamac-tray &
#exec ~/.dropbox-dist/dropboxd &
#exec insync start &

# Post-Desktop apps
exec compton &
#exec nitrogen --restore &
