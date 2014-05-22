#!/bin/sh

exec urxvtd -q -f -o &
exec dropboxd &
exec compton --config $HOME/.compton.conf &
exec uim-toolbar-gtk-systray &

