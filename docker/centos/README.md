## User
Login : ``test``
Password : ``dockerpass``

## Store Docker files in /home
```
sudo cp -R /var/lib/docker /home/
sudo rm -Rf /var/lib/docker
sudo ln -s /home/docker /var/lib/docker
```

## Clean Docker files
```
sudo docker system prune
```

## Start Docker
```
sudo docker build -t archlinux-dotfiles .
```
