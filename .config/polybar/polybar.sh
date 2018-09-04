#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=DVI-I-1 polybar main &
MONITOR=HDMI-0 polybar sub &

echo "Bars launched..."
