#!/bin/bash
pac=$(checkupdates 2>/dev/null | wc -l)
aur=$(trizen -Qua 2>/dev/null | wc -l)
#kernel=$(vercmp "$(uname -r | sed 's/-arch/\./')"  "$(pacman --nodeps -Sp --print-format %v linux)")

if [[ $pac -eq "0" ]] && [[ $aur -eq "0" ]] || [[ ! $pac =~ [0-9]+ ]] || [[ ! $aur =~ [0-9]+ ]]
then
    exit 0
fi

if [[ $(checkupdates | grep '^linux\ ') ]]
then
    echo "$pac %{F#ff5c57}%{F-} $aur"
else
    echo "$pac %{F#5b5b5b}%{F-} $aur"
fi
