#!/bin/bash
action=$(echo -e "suspend\nlock\nhibernate\nlogout\nshutdown\nreboot" | rofi -dmenu -p "power:")

if [[ "$action" == "lock" ]]
then
    ~/.i3/i3lock-fancy-multimonitor/lock
fi

if [[ "$action" == "suspend" ]]
then
    ~/.i3/i3lock-fancy-multimonitor/lock && systemctl suspend-then-hibernate && echo '*/reconnect' >~/.weechat/weechat_fifo
fi

if [[ "$action" == "hibernate" ]]
then
    systemctl hibernate
fi

if [[ "$action" == "logout" ]]
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
