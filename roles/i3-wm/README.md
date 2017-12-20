# Managed files
- \~/.i3/config
- \~/.xinitrc

# Hostname specific configuration for config file
Add a dir named as hostname to include specific host configuration in config file
```
mkdir templates/$(hostname)
echo "#To include in config file" > templates/$(hostname)/config.j2
```
