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

### Why dotfiles with Ansible ?

- Modularity: Roles as modules
- Factorization: Configuration files templated with jinja2 which use includes
- Simplicity: It only requires SSH on distant hosts, and can work locally too, ansible is available via pip.
- Flexibility: Push your dotfiles from/to any hosts you manage
- Toolbox: Dry-run mode, diff mode, files/vars encryption with Ansible-vault, tags...

### Test VMs|Containers
Please check ``vagrant/*/README.md`` and ``docker/*/README.md``

### Docs
Please look at ``roles/*/README.md`` if exists for specific hosts configuration.

### How to

** Use carefully** backup your home before using !  
You can use ``--check`` to dry-run and ``--diff`` to see what could change.

#### 1. Fork Me!

#### 2. Clone your repo on a personal host
```
git clone --recursive https://github.com/[your_repo]/dotfiles
cd dotfiles
```
#### 3. Generate ssh keys
```
ssh-keygen -t rsa
```
#### 4. Replace your ssh key in ``authorized_keys`` role
!!! Use as is, you will add my SSH key in your authorized_keys !!!
```
cp ~/.ssh/id_rsa.pub dotfiles/roles/authorized_keys/id_rsa.pub
```
#### 5. Generate hosts file with your managed hosts
``hosts`` file is defaultly gitignored.
```
cd dotfiles
cp hosts.template hosts
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

#### 6. Deploy SSH keys on nodes
Node per node if password differ between users.
It adds your public ssh keys on hosts.
```
ansible-playbook install.yml -t init_ssh -l host1 --ask-pass
ansible-playbook install.yml -t init_ssh -l host2 --ask-pass
ansible-playbook install.yml -t init_ssh -l host3 --ask-pass
```

#### 7. Run ansible-playbook

For runs on hosts configured with root user
You can use without providing extra passwords
```
ansible-playbook install.yml -l server
```
For hosts configured with non-root user
User needs to be in sudoers.
You need to use ``-K|--ask-become-pass`` to ask sudo password, and -l <host> to limit to that host
```
ansible-playbook install.yml -l host1 --ask-become-pass --ask-vault-pass
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
ansible-playbook install.yml -l localhost -K --ask-vault-pass
```

### Previously

* [i3-gaps Dark Solarized](https://github.com/eoli3n/dotfiles/tree/zsh-agnoster-solarized)
* [i3-gaps Acid Dark](https://github.com/eoli3n/dotfiles/tree/i3-gaps-acid-dark)
