# Managed files
- \~/.config/polybar/config
- \~/.config/polybar/launch.sh
- \~/.config/polybar/pkg.sh

# Managed dirs
- \~/.config/polybar/modules
- \~/.config/polybar/bars

# Dualscreen configuration by host
Add a dir named as hostname to include specific host configuration for multiple screen launch
```
mkdir templates/$(hostname)
echo <<\EOF > templates/$(hostname)/launch.j2
MONITOR=HDMI1 polybar top &
MONITOR=HDMI2 polybar top &
MONITOR=HDMI2 polybar bottom &
EOF
```
