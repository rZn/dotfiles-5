# Archlinux i3wm screenshots

i3wm zsh conky

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3wm.png)

weechat

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/weechat.png)

thunar gtk dmenu2

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/thunar.png)

firefox O!MPD

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/web.png)

i3lock

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3lock.png)

# Env setup
    
    sudo pacman -S i3-wm rxvt-unicode zsh git i3lock ttf-hack vim weechat compton conky xbindkeys powerline powerline-fonts powerline-vim xorg-xrdb xclip zsh-syntax-highlighting tmux

    yaourt -S compton-git powerline ttf-font-awesome ttf-font-icons j4-dmenu-desktop

# update font cache
    
    fc-cache -f

# link to .Xdefaults
    
    ln -s ~/.Xresources ~/.Xdefaults

# reload Xresources
    
    xrdb ~/.Xresources

# Weechat solarized

    /set weechat.bar.status.color_bg 0
    /set weechat.bar.title.color_bg 0
    /set weechat.color.chat_nick_colors 1,2,3,4,5,6
    /set buffers.color.hotlist_message_fg 7
    /set weechat.color.chat_highlight_bg red
    /set weechat.color.chat_highlight black
    /script install colorize_nicks.py buffers.pl iset.pl highmon.pl

# Enable services

    systemctl --user enable weechat.service
    systemctl --user enable ssh-agent.service
    systemctl --user enable interfacelift.timer

# Subprojects used

https://github.com/guimeira/i3lock-fancy-multimonitor

https://github.com/chjj/compton
