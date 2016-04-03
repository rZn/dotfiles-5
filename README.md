# I3WM full config

![alt tag](http://img15.hostingpics.net/pics/971001201603291106411920x1200scrot.png)
![alt tag](http://img15.hostingpics.net/pics/391607201603291109041920x1200scrot.png)
![alt tag](http://img15.hostingpics.net/pics/487495201603291117121920x1200scrot.png)

# Env setup
    
    sudo pacman -S i3-wm rxvt-unicode zsh git weechat i3lock ttf-hack vim weechat compton conky xbindkeys powerline powerline-fonts xorg-xrdb xclip 

    yaourt compton-git powerline ttf-font-awesome ttf-font-icons

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
