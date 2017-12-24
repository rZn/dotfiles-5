# Managed files
- \~/.config/polybar/config
- \~/.config/polybar/launch.sh
- \~/.config/polybar/pkg.sh

# Dualscreen configuration
Add a dir named as hostname to include specific host configuration for multiple screen launch
```
mkdir templates/$(hostname)
echo <<\EOF > templates/$(hostname)/launch.j2
MONITOR=HDMI1 polybar top &
MONITOR=HDMI2 polybar top &
MONITOR=HDMI2 polybar bottom &
EOF
```

It will uncomment monitor values in config.j2 too

# Modules configuration
```
mkdir templates/$(hostname)
# Top modules configuration
echo <<\EOF > templates/$(hostname)/modules-top.j2
modules-left =  i3 xwindow
modules-center =
modules-right = backlight volume pkg wlan vpncheck battery date
EOF

# Bottom modules configuration
echo <<\EOF > templates/$(hostname)/modules-bottom.j2
modules-left =
modules-center = networkspeedup networkspeeddown
modules-right = temperature filesystem-slash filesystem-home cpu memory
EOF

# Include some modules
echo <<\EOF > templates/$(hostname)/modules-def.j2
[module/example]
type = custom/script
interval = 1200
format = <label>
label = "%output:0:100%%"
exec = uname -a

[module/example2]
type = custom/script
interval = 1200
format = <label>
label = "%output:0:100%%"
exec = hostname
EOF
```
