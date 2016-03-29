# Env setup
sudo pacman -S i3-wm zsh git i3lock ttf-hack vim weechat compton conky xbindkeys powerline powerline-fonts xorg-xrdb xclip 

yaourt compton-git powerline ttf-font-awesome ttf-font-icons

# reload Xresources
xrdb ~/.Xresources

# update font cache
fc-cache -f

# Weechat solarized
/set weechat.bar.status.color_bg 0

/set weechat.bar.title.color_bg 0

/set weechat.color.chat_nick_colors 1,2,3,4,5,6

/set buffers.color.hotlist_message_fg 7

/set weechat.color.chat_highlight_bg red

/set weechat.color.chat_highlight black

/script install colorize_nicks.py buffers.pl iset.pl highmon.pl
