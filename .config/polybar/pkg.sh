#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u --threads=3 | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
	echo "$pac %{F#5b5b5b}%{F-} $aur"
else
	echo "No Updates"
fi
