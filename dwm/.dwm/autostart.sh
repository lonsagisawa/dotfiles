#!/bin/bash

nitrogen --restore &
picom &

# xob
mkfifo /tmp/volumebar; tail -f /tmp/volumebar | xob &
mkfifo /tmp/brightnessbar; tail -f /tmp/brightnessbar | xob -m $(brightnessctl m) &

# IBus
ibus-daemon -drx &

# light-locker
light-locker --lock-on-suspend --lock-on-lid &

dwmblocks