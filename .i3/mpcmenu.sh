#!/bin/bash
action=$(echo -e "toggle\nprev\nnext" | dmenu -fn 'hack-10' -h 20 -nb '#202020' -nf '#FFFFFF' -sf '#dc322f' -sb '#202020' -p "mpc >" -w 150 -o 0.9 -y 21 -l 3)
if [[ "$action" == "toggle" ]]
then
    mpc toggle
fi

if [[ "$action" == "prev" ]]
then
    mpc prev
fi

if [[ "$action" == "next" ]]
then
    mpc next
fi
