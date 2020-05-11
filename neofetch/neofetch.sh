#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

wget "https://avatars0.githubusercontent.com/u/12347044?s=400&v=4" -O /tmp/archzfs.png

neofetch --config "$DIR"/config --kitty /tmp/archzfs.png
