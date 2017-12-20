# Archlinux i3-gaps Acid Dark 

## How to use

Ansible allows to duplicate this Desktop Environment over multiple hosts with specific configuration (dualscreen, packages...).
Fork Me! Please look at ``roles/*/README.md`` if exists for specific hosts configuration.

## Try it in a VM

Please check ``vagrant/*/README.md``

## Dependencies

**Packer**

```
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer-git; makepkg PKGBUILD --install --needed --noconfirm
```

## Installation
[WARNING] Use carefully, backup your home before using !
Ansible will backup any existing conf file before erasing it (.zshrc, .i3/config, etc...)
```
git clone --recursive https://github.com/eoli3n/dotfiles
# To list tags
ansible-playbook -i "localhost," -c local install.yml --list-tags
# To list tasks, dryrun then install
dotfiles/install.sh <desktop|laptop|server|[any tag]>
```

## Manual configurations

**Google chrome**

Open this link to set lighter scrollbar

```
chrome://flags/#overlay-scrollbars
```

To use dark theme, go to graphical configuration and click ``Use GTK+ Theme``

**Weechat**

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

**i3-gaps zsh pureprompt polybar**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3gaps.png)

**Weechat**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/weechat.png)

**Chrome Rofi Stylish**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/chrome-rofi.png)

**Connman GTK Theme**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/connman-gtk.png)


# Previously

* [i3-gaps Dark Solarized](https://github.com/eoli3n/dotfiles/tree/zsh-agnoster-solarized)

**IRC**

eoli3n @ freenode #archlinux-fr
