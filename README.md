# Archlinux i3-gaps Acid Dark 

**i3-gaps zsh pureprompt polybar**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3gaps.png)

**Weechat**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/weechat.png)

**Chrome Rofi Stylish**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/chrome-rofi.png)

**Connman GTK Theme**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/connman-gtk.png)
## How to
Ansible allows to duplicate this Desktop Environment over multiple hosts with specific configuration (dualscreen, packages...).
Fork Me! Please look at ``roles/*/README.md`` if exists for specific hosts configuration.

## Try it
Please check ``vagrant/*/README.md``

# Desktop/Laptop Environment

## Archlinux

### Dependencies

- Ansible
- Packer

```
sudo pacman -S jshon
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer-git; makepkg PKGBUILD --install --needed --noconfirm
```

### Installation
[WARNING] Use carefully, backup your home before using !
Ansible will backup any existing conf file before erasing it (.zshrc, .i3/config, etc...)
```
git clone --recursive https://github.com/eoli3n/dotfiles
# To list tags
ansible-playbook -i "localhost," -c local install.yml --list-tags
# To list tasks, dryrun then install
dotfiles/install.sh <desktop|laptop|[any package tag]>
```

### Manual configurations

**Google chrome**

Open this link to set lighter scrollbar
```
chrome://flags/#overlay-scrollbars
```
To use dark theme, go to graphical configuration and click ``Use GTK+ Theme``

# Server Environment

## Deps

- git
- ansible

## Supported OS

- Archlinux
- Debian
- Centos
- FreeBSD : need to ``sudo ln -s /usr/local/bin/python2 /usr/bin/python``

## Installation

```
git clone --recursive https://github.com/eoli3n/dotfiles
# To list tags
cd dotfiles
ansible-playbook -i "localhost," -c local install.yml --list-tags -t server
# To list tasks, dryrun then install
./install.sh <server|[any package tag]>

```

# Previously

* [i3-gaps Dark Solarized](https://github.com/eoli3n/dotfiles/tree/zsh-agnoster-solarized)

**IRC**

eoli3n @ freenode #archlinux-fr
