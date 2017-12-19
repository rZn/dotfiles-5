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
