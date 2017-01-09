# Archlinux i3-gaps Dark Solarized

i3-gaps zsh polybar

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3gaps.png)

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

```
sudo pacman -S rxvt-unicode zsh git ttf-hack vim weechat xbindkeys powerline powerline-fonts powerline-vim xorg-xrdb xclip zsh-syntax-highlighting tmux xorg-xfd connman connman-gtk w3m lxappearance

pacaur -S i3-gaps polybar-git albert compton-git powerline powerline-vim ttf-font-awesome ttf-unifont ttf-font-icons j4-dmenu-desktop siji-git menutray cower

cd ~/.i3
git clone https://github.com/guimeira/i3lock-fancy-multimonitor
```
Change BLURTYPE="5x3" in lock file

# Gtk+ and Qt

Run lxappearance and apply "Vertex-Dark" theme.

To use GTK-like theme with Qt edit ~/.config/Trolltech.conf and set

```
[Qt]
style=GTK+
```   

# update font cache

``` 
fc-cache -f
```

# link to .Xdefaults

```
ln -s ~/.Xresources ~/.Xdefaults
```

# reload Xresources

```   
xrdb ~/.Xresources
```   

# Weechat solarized

```   
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
/set weechat.look.separator_horizontal " "
/set buffers.color.current_bg 240
/set buffers.color.current_fg white
/set buffers.look.show_number off
/set weechat.bar.buffers.position top
/set weechat.look.buffer_time_format ${color:252}%H${color:245}%M${color:240}%S
/set env TERM screen-256color
/set weechat.bar.input.items "            ,[input_search],[input_paste],input_text"
/set weechat.bar.input.color_delim 240
/set weechat.look.prefix_error "✘"
/set weechat.look.prefix_join ""
/set weechat.look.prefix_quit ""
/set weechat.look.prefix_suffix " "
/set weechat.look.read_marker none
/upgrade
```

# Google-chrome

Start google chrome and in a tab enabled

```
chrome://flags/#overlay-scrollbars
```

To set dark theme, go to graphical configuration and click "Use GTK+ Theme"


# Enable services

```
systemctl --user enable weechat.service
systemctl --user enable ssh-agent.service
systemctl --user enable interfacelift.timer
```

# Subprojects

https://github.com/Airblader/i3

https://github.com/jaagr/polybar

https://github.com/guimeira/i3lock-fancy-multimonitor

https://github.com/chjj/compton

https://github.com/altercation/solarized
