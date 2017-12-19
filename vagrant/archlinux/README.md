https://asciinema.org/a/BHA2aFe0yq9vbBuEx5QCFPhKx?speed=5
[![https://asciinema.org/a/BHA2aFe0yq9vbBuEx5QCFPhKx?speed=5](https://asciinema.org/a/BHA2aFe0yq9vbBuEx5QCFPhKx.png)]

# Dependencies

- Vagrant
- Virtualbox
- 900M free on $HOME for Archlinux vagrant box ``~/.vagrant.d/boxes/terrywang-VAGRANTSLASH-archlinux``
- \~6G free on $HOME for Archlinux virtualbox VM ``~/VirtualBox\ VMs/archlinux_dotfiles``

# Test

This is fully automatised

```
git clone --recursive https://github.com/eoli3n/dotfiles
cd dotfiles
git checkout dev
cd dotfiles/vagrant/archlinux
vagrant up
```
