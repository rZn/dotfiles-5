#!/bin/bash
action=$(echo -e "ompd\nspotify\ntransmission\nnicotine\nstreamstudio\nnetflix\nmps-youtube" | dmenu -fn 'hack-10' -h 20 -nb '#202020' -nf '#FFFFFF' -sf '#dc322f' -sb '#202020' -p "wapps >" -w 190 -o 0.9 -y 21 -l 7)

if [[ "$action" == "ompd" ]]
then
    /usr/bin/google-chrome-stable --app="http://127.0.0.1/ompd"
fi

if [[ "$action" == "transmission" ]]
then
    /usr/bin/google-chrome-stable --app="http://localhost:9091/transmission/web/"
fi

if [[ "$action" == "streamstudio" ]]
then
    streamstudio
fi

if [[ "$action" == "netflix" ]]
then
    /usr/bin/google-chrome-stable --app="https://www.netflix.com"
fi

if [[ "$action" == "mps-youtube" ]]
then
    urxvtc -e mpsyt
fi

if [[ "$action" == "nicotine" ]]
then
    nicotine.py
fi

if [[ "$action" == "spotify" ]]
then
    blockify
fi
