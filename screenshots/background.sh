#!/bin/bash

background="https://unsplash.com/photos/wQLAGv4_OYs/download?force=true&w=1920"

wget "$background" -O /tmp/background.jpg

swaymsg output "*" bg /tmp/background.jpg fill
