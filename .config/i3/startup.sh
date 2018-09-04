#!/bin/bash

# gtk3-nocsd
export GTK_CSD=0
export LD_PRELOAD=/usr/lib/libgtk3-nocsd.so.0

# Pre-Desktop daemon/settings
# exec xfce4-power-manager &
exec light-locker &
exec lxqt-policykit-agent &

# IBus
exec ibus-daemon -drx &

# tray apps
# exec volumeicon &
# exec pamac-tray &

# Post-Desktop apps
exec compton &
exec nitrogen --restore &
exec dropbox &
exec mpd &
