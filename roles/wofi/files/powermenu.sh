#!/usr/bin/env bash

action=$(echo -e "suspend\nlock\nhibernate\nsuspend-then-hibernate\nlogout\nshutdown\nreboot" | wofi -d -p "power:")

if [[ "$action" == "lock" ]]
then
    swaylock-fancy
fi

if [[ "$action" == "suspend" ]]
then
    swaylock-fancy && systemctl suspend-then-hibernate && echo '*/reconnect' >~/.weechat/weechat_fifo
fi

if [[ "$action" == "suspend-then-hibernate" ]]
then
    ~/.i3/i3lock-fancy-multimonitor/lock && systemctl suspend-then-hibernate && echo '*/reconnect' >~/.weechat/weechat_fifo
fi

if [[ "$action" == "hibernate" ]]
then
    systemctl hibernate
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
