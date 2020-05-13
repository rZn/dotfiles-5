### Build and run Locally
```
git clone https://github.com/eoli3n/dotfiles
cd dotfiles
sudo docker build -t archlinux/dotfiles -f docker/archlinux/Dockerfile .
docker run archlinux/dotfiles ansible-playbook -i docker/archlinux/hosts install.yml
```
