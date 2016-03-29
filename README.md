# Env setup
sudo pacman -S i3-wm zsh git i3lock ttf-hack vim weechat compton conky xbindkeys

yaourt compton-git powerline ttf-font-awesome ttf-font-icons

# Weechat solarized
/set weechat.bar.status.color_bg 0

/set weechat.bar.title.color_bg 0

/set weechat.color.chat_nick_colors 1,2,3,4,5,6

/set buffers.color.hotlist_message_fg 7

/script install colorize_nicks.py buffers.pl iset.pl highmon.pl
