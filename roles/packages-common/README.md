# Specific OS packages
Add a tasks file named with hostname of target
```
echo <<\EOF > tasks/by_os/<archlinux|debian|centos|freebsd>/main.yml
---
- name: Install <archlinux|debian|centos|freebsd> packages
  pacman: name={{item}} state=present
  with_items:
    - vim
  become: True
EOF
```

# Specific hosts packages
Add a tasks file named with hostname of target
```
mkdir tasks/by_host/$(hostname)
echo <<\EOF > tasks/by_host/$(hostname)/main.yml
---
- name: Install $(hostname) packages
  pacman: name={{item}} state=present
  with_items:
    - vim
  become: True
EOF
```
