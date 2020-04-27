# Autostart sway when user login on tty1
if test -z $DISPLAY and (tty) = "/dev/tty1"
  exec sway
fi
