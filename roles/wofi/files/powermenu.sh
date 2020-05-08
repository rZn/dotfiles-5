#!/usr/bin/env bash

action=$(echo -e "suspend\nlock\nlogout\nshutdown\nreboot" | wofi -d -p "power:" -L 5)

if [[ "$action" == "lock" ]]
then
    swaylock-fancy
fi

if [[ "$action" == "suspend" ]]
then
    swaylock-fancy && systemctl suspend && echo '*/reconnect' >~/.weechat/weechat_fifo
fi

if [[ "$action" == "logout" ]]
then
    swaymsg exit
fi

if [[ "$action" == "shutdown" ]]
then
    shutdown now
fi

if [[ "$action" == "reboot" ]]
then
    reboot
fi
