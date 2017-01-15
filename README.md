# Archlinux i3-gaps Acid Dark 

**i3-gaps zsh pureprompt polybar**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3gaps.png)

**Weechat**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/weechat.png)

**Chrome Rofi Stylish**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/chrome-rofi.png)

**Connman GTK Theme**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/connman-gtk.png)

# Setup

**Packages**

```
sudo pacman -S rxvt-unicode zsh zsh-syntax-highlighting git ttf-hack vim weechat xbindkeys powerline powerline-fonts powerline-vim xorg-xrdb xclip tmux xorg-xfd connman connman-gtk w3m lxappearance maim slop

pacaur -S i3-gaps polybar-git rofi compton-git powerline powerline-vim ttf-font-awesome ttf-unifont ttf-font-icons siji-git menutray cower i3lock-color-git

cd ~/.i3
git clone https://github.com/guimeira/i3lock-fancy-multimonitor
```
Change ``BLURTYPE="5x3"`` in ``i3lock-fancy-multimonitor/lock`` file.

**ZSH pure prompt**

1° Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

2° Then install [pure prompt](https://github.com/sindresorhus/pure)

**Gtk+ and Qt**

Run lxappearance and apply ``Vertex-Dark`` theme.

To use GTK-like theme with Qt edit ``~/.config/Trolltech.conf`` and set

```
[Qt]
style=GTK+
```   

**Google chrome**

Open this link to set lighter scrollbar

```
chrome://flags/#overlay-scrollbars
```

To use dark theme, go to graphical configuration and click ``Use GTK+ Theme``

**Update font cache and Xresources**

``` 
fc-cache -f
ln -s ~/.Xresources ~/.Xdefaults
xrdb ~/.Xresources
```

**Enable services**

```
systemctl --user enable weechat.service
systemctl --user enable ssh-agent.service
```

# Weechat Clean Acid

In weechat

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

# Subprojects

- https://github.com/Airblader/i3
- https://github.com/jaagr/polybar
- https://github.com/guimeira/i3lock-fancy-multimonitor
- https://github.com/chjj/compton
- [hyperterm-snazzy-Xresources](https://gist.github.com/zhy0/ffdab4b01f8cf6a6814261d4c4eed0be)

## Previously

* [i3-gaps Dark Solarized](https://github.com/eoli3n/dotfiles/tree/zsh-agnoster-solarized)

**IRC**

eoli3n @ freenode #archlinux-fr
