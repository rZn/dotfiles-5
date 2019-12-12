# i3-gaps Acid Dark 

[![Build Status](https://travis-ci.org/eoli3n/dotfiles.svg?branch=master)](https://travis-ci.org/eoli3n/dotfiles)

**i3-gaps zsh pureprompt polybar**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/i3gaps.png)

**Weechat**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/weechat.png)

**Chrome Rofi Stylish**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/chrome-rofi.png)

**Connman GTK Theme**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/connman-gtk.png)

## Why using Ansible ?
Ansible allows to duplicate this Desktop Environment over multiple hosts with specific configuration (dualscreen, packages...).
All your nodes will have access to all configurations if
- your git repo is accessible from every nodes
- your current node ssh keys is authorized on all nodes

You should be able to edit and push from/to any managed hosts.

## Test VMs|Containers
Please check ``vagrant/*/README.md`` and ``docker/*/README.md``

## Docs
Please look at ``roles/*/README.md`` if exists for specific hosts configuration.

## Desktop/Laptop Environment

Should not be used as ``root``.

#### Supported OS

- Archlinux

#### Dependencies

- ansible >= 2.7

#### Role list

- packages-common
- fish
- neovim
- terminfo
- screen
- authorized_keys
- packages-desktop
- gtk
- i3-wm
- picom
- polybar
- variety
- rofi
- neofetch
- termite
- weechat
- ssh-agent
- dpms
- packages-laptop [only laptop tag]
- xbindkeys [only laptop tag]

## Server Environment

Only cli tools
It could be run as ``root``.

#### Supported OS

- Archlinux
- Debian
- Centos
- FreeBSD : need to ``sudo ln -s /usr/local/bin/python2 /usr/bin/python``

#### Dependencies

- ansible >= 2.7

#### Role list

- packages-common
- fish
- neovim
- terminfo
- screen
- authorized_keys

## How to

** Use carefully** backup your home before using ! Ansible will backup any existing conf file before overriding.

#### 1° Fork Me!

#### 2° Clone your repo on a personal host
```
git clone --recursive https://github.com/[your_repo]/dotfiles
cd dotfiles
```
#### 3° Generate ssh keys
```
ssh-keygen -t rsa
```
#### 4° Replace your ssh key in ``authorized_keys`` role
!!! Use as is, you will add my SSH key in your authorized_keys !!!
```
cp ~/.ssh/id_rsa.pub dotfiles/roles/authorized_keys/id_rsa.pub
```
#### 5° Generate hosts file with your managed hosts
``hosts`` file is defaultly gitignored.
```
cd dotfiles
mv hosts.template hosts
```
Add your hosts in right sections
- server : install only cli tools
- desktop : install graphic environment
- laptop : install desktop + some extra packages

Please explicitly define an ``ansible_user`` which will receive configurations
```
[server]
server1 ansible_user=root
[laptop]
host1 ansible_user=user
[desktop]
host2 ansible_user=user2
```
Remove useless groups and hosts

#### 6° Deploy SSH keys on nodes
Node per node if password differ between users.
It adds your public ssh keys on hosts
```
ansible-playbook install.yml -t init_ssh -l host1 -k
ansible-playbook install.yml -t init_ssh -l host2 -k
ansible-playbook install.yml -t init_ssh -l host3 -k
```

#### 7° Run ansible-playbook

For runs on hosts configured with root user
You can use without providing extra passwords
```
ansible-playbook install.yml -l server
```
For hosts configured with non-root user
User needs to be in sudoers.
You need to use -K to ask sudo password, and -l <host> to limit to that host
```
ansible-playbook install.yml -l host1 -K
```

#### Extra commands
To list tasks and tags
```
ansible-playbook install.yml --list-tasks
```
To limit to a tag
```
ansible-playbook install.yml -K -t <tag>
```
To dry-run and print files diff on all declared hosts
```
ansible-playbook install.yml -l host1 -CDK
```

#### Local run
Add localhost line and user in right hosts file section
```
[server]
[laptop]
localhost ansible_connection=local ansible_user=user
[desktop]
```
```
ansible-playbook install.yml -l localhost -K
```

## Previously

* [i3-gaps Dark Solarized](https://github.com/eoli3n/dotfiles/tree/zsh-agnoster-solarized)

**IRC**

eoli3n @ freenode #archlinux-fr
