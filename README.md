# Sway Acid Dark 

[![Build Status](https://travis-ci.org/eoli3n/dotfiles.svg?branch=master)](https://travis-ci.org/eoli3n/dotfiles)

**Sway fish pure waybar neovim**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/sway.png)

**Tiny irc client**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/irc.png)

**Firefox/Tabliss Wofi**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/ff.png)

**Connman/Thunar GTK Theme**

![alt tag](https://github.com/eoli3n/dotfiles/blob/master/screenshots/gtk.png)

### Why Ansible ?

- Modularity: [Roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html) as modules.
- Factorization: It uses [jinja2](https://docs.ansible.com/ansible-container/container_yml/template.html) templating engine.
- Simplicity: No agent, only SSH, available via pip.
- Flexibility: Push your dotfiles from/to any hosts.
- Toolbox: Dry-run mode, diff mode, secrets encryption, tags...

### Test

See ``vagrant/*/README.md`` and ``docker/*/README.md``.

### How to

** Use carefully** backup your home before using !  
You can use ``--check`` to dry-run and ``--diff`` to see what could change.  

Check details in ``roles/*/README.md``.  

###### 1. Fork Me!

###### 2. Clone your repo on your master host

Use recursive mode to get aur ansible module for Archlinux.
```
git clone --recursive https://github.com/*/dotfiles
```
###### 3. Generate hosts file

``hosts`` file is defaultly gitignored.
```
cd dotfiles
cp hosts.template hosts
```
Add your hosts in section
- *cli*: install only cli tools
- *desktop*: install graphic environment

Define which user to configure with *ansible_user*.  
You can't use **root** account for host in *desktop* section.  
Users needs to be sudoers.  
```
[cli]
server1 ansible_user=root
[desktop]
host1 ansible_user=user
host2 ansible_user=user2
```

If you just want to use it on local host
```
[desktop]
localhost ansible_connection=local ansible_user=user
```

###### 4. Configure SSH connexions

Push your SSH public key on all your ``users@hosts``
```
ssh-copy-id -i path/to/ssh/key.pub user@host
```

###### 5. (Dry)Run

```
ansible-playbook install.yml -CD
ansible-playbook install.yml
```
To configure cli tools for root on desktop hosts
```
ansible-playbook install.yml -b -K
```

### Previously

* [i3-gaps Dark Solarized](https://github.com/eoli3n/dotfiles/tree/zsh-agnoster-solarized)
* [i3-gaps Acid Dark](https://github.com/eoli3n/dotfiles/tree/i3-gaps-acid-dark)
