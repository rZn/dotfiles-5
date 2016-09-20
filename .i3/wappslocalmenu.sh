#!/bin/bash
action=$(echo -e "ompd\nsoundcloud\ngmaps\nnetflix\ntransmission" | dmenu -fn 'hack-10' -h 20 -nb '#202020' -nf '#FFFFFF' -sf '#dc322f' -sb '#202020' -p "wapps >" -w 190 -o 0.9 -y 21 -l 2)

if [[ "$action" == "ompd" ]]
then
    /usr/bin/google-chrome-stable --app="http://127.0.0.1/ompd"
fi

if [[ "$action" == "transmission" ]]
then
    /usr/bin/google-chrome-stable --app="http://localhost:9091/transmission/web/"
fi

