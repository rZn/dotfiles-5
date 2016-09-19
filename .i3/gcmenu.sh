#!/bin/bash
action=$(echo -e "ompd\nsoundcloud\ngmaps\nnetflix\ntransmission" | dmenu -fn 'hack-10' -h 20 -nb '#202020' -nf '#FFFFFF' -sf '#dc322f' -sb '#202020' -p "wapps >" -w 190 -o 0.9 -y 21 -l 5)

if [[ "$action" == "ompd" ]]
then
    /usr/bin/google-chrome-stable --app="http://127.0.0.1/ompd"
fi

if [[ "$action" == "soundcloud" ]]
then
    /usr/bin/google-chrome-stable --app="https://soundcloud.com/stream"
fi

if [[ "$action" == "gmaps" ]]
then
    /usr/bin/google-chrome-stable --app="http://www.googlemaps.com"
fi

if [[ "$action" == "netflix" ]]
then
    /usr/bin/google-chrome-stable --app="https://www.netflix.com"
fi

if [[ "$action" == "transmission" ]]
then
    /usr/bin/google-chrome-stable --app="http://localhost:9091/transmission/web/"
fi

