#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)
kernel=$(vercmp "$(uname -r | cut -f-2 -d-)"  "$(pacman --nodeps -Sp --print-format %v linux)")

if [[ $kernel == "0" ]]
then
    echo "$pac %{F#5b5b5b}%{F-} $aur"
else
    echo "$pac %{F#ff5c57}%{F-} $aur"
fi
