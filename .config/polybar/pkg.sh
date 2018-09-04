#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u --threads=3 | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
	echo "%{F#5b5b5b}%{F-}Update Available"
else
	echo ""
fi
