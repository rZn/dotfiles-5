#!/bin/bash
pac=$(checkupdates 2>/dev/null | wc -l)
aur=$(cower -u 2>/dev/null | wc -l)
kernel=$(vercmp "$(uname -r | cut -f-2 -d-)"  "$(pacman --nodeps -Sp --print-format %v linux)")

if [[ $pac -eq "0" ]] && [[ $aur -eq "0" ]] || [[ ! $pac =~ [0-9]+ ]] || [[ ! $aur =~ [0-9]+ ]]
then
    exit 0
fi

if [[ $kernel == "0" ]]
then
    echo "$pac %{F#5b5b5b}%{F-} $aur"
else
    echo "$pac %{F#ff5c57}%{F-} $aur"
fi
