#!/usr/bin/env bash

booted=$(readlink /run/booted-system/kernel)
installed=$(readlink /run/current-system/kernel)

if [[ $booter != $installed ]]
then
    echo "reboot"
fi
