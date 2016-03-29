# Env setup
sudo pacman -S zsh ttf-hack git vim weechat powerline-fonts xorg-xrdb xclip

# reload Xresources
xrdb ~/.Xresources

# update font cache
fc-cache -f

# ansible
sudo pip install ansible

# conf weechat
/set weechat.bar.status.color_bg 0
/set weechat.bar.title.color_bg 0
/set weechat.color.chat_nick_colors 1,2,3,4,5,6
/set buffers.color.hotlist_message_fg 7
/script install colorize_nicks.py buffers.pl iset.pl highmon.pl
