# Dependencies

- Vagrant
- Virtualbox

# Test

This is fully automatised

```
git clone --recursive https://github.com/eoli3n/dotfiles
cd dotfiles
git checkout dev
cd dotfiles/vagrant/archlinux
vagrant up
```

# Manual configurations after install

```
echo -e 'vagrant\n/usr/bin/zsh' | chsh
```
