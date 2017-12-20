https://asciinema.org/a/BHA2aFe0yq9vbBuEx5QCFPhKx?speed=5
[![asciicast](https://asciinema.org/a/BHA2aFe0yq9vbBuEx5QCFPhKx.png)](https://asciinema.org/a/BHA2aFe0yq9vbBuEx5QCFPhKx?speed=5&autoplay=1)

# Dependencies

- Vagrant
- Virtualbox
- 900M free on $HOME for Archlinux vagrant box ``~/.vagrant.d/boxes/terrywang-VAGRANTSLASH-archlinux``
- \~6G free on $HOME for Archlinux virtualbox VM ``~/VirtualBox\ VMs/archlinux_dotfiles``

# Provision

This is fully automatised

```
git clone --recursive https://github.com/eoli3n/dotfiles
cd dotfiles
cd vagrant/archlinux
vagrant up
```

# Test

- Launch virtualbox GUI, open ``archlinux-dotfiles`` VM
- Login in TTY
  - Login : ``vagrant``
  - Password : ``vagrant``
- ``startx``
