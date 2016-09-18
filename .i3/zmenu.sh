#!/bin/bash
action=$(echo -e "lock\nlogout\nshutdown\nreboot" | dmenu -fn 'hack-10' -h 20 -nb '#202020' -nf '#FFFFFF' -sf '#dc322f' -sb '#202020' -p '>' -w 100 -o 0.9 -y 21 -l 4)
if [[ "$action" == "lock" ]]
then
    ~/.i3/i3lock-fancy-multimonitor/lock
fi

if [[ "$action" == "exit" ]]
then
    i3-msg exit
fi

if [[ "$action" == "shutdown" ]]
then
    shutdown now
fi

if [[ "$action" == "reboot" ]]
then
    reboot
fi
