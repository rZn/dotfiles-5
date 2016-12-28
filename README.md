# Archlinux i3-gaps Dark Solarized

i3-gaps zsh polybar

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3wm.png)

Weechat

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/weechat.png)

Chrome App mode with O!MPD, thunar gtk

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/thunar.png)

Retroarch

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/retroarch.png)

i3lock

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3lock.png)

Connman

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/connman.png)

# Setup
    
    sudo pacman -S rxvt-unicode zsh git i3lock ttf-hack vim weechat compton xbindkeys powerline powerline-fonts powerline-vim xorg-xrdb xclip zsh-syntax-highlighting tmux

    pacaur -S i3-gaps polybar albert compton-git powerline ttf-font-awesome ttf-unifont ttf-font-icons j4-dmenu-desktop siji-git

    cd ~/.i3
    git clone https://github.com/guimeira/i3lock-fancy-multimonitor
    # change BLURTYPE="5x3" in "lock" file


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
    /bar toggle nicklist
    /bar toggle title
    /bar toggle status
    /set weechat.bar.buffers.position right

# Google-chrome hide toolbar

    #start google chrome and in a tab enabled ->
    chrome://flags/#overlay-scrollbars

# Enable services

    systemctl --user enable weechat.service
    systemctl --user enable ssh-agent.service
    systemctl --user enable interfacelift.timer

# Subprojects

https://github.com/Airblader/i3

https://github.com/jaagr/polybar

https://github.com/guimeira/i3lock-fancy-multimonitor

https://github.com/chjj/compton

https://github.com/altercation/solarized
