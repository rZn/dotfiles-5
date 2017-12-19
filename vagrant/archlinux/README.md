# Dependencies

- Vagrant
- Virtualbox
- 900M free on $HOME for Archlinux vagrant box \n *\~/.vagrant.d/boxes/terrywang-VAGRANTSLASH-archlinux*
- \~6G free on $HOME for Archlinux virtualbox VM \n *\~/VirtualBox\ VMs/archlinux_default_.............*


# Test

This is fully automatised

```
git clone --recursive https://github.com/eoli3n/dotfiles
cd dotfiles
git checkout dev
cd dotfiles/vagrant/archlinux
vagrant up
```
