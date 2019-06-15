# Specific hosts packages
Add a tasks file named with hostname of target 
```
echo <<\EOF > tasks/$(hostname).yml
---
- name: Install $(hostname) packages
  pacman:
    state: present
    name:
      - vim
  become: True
EOF
```

