#!/bin/bash

### VARS ###
warm_color="5000K"
normal_color="6500K"

### USAGE ###
if [[ -z "$1" ]]
then 
    echo "Usage: redshift.sh [on|off|toggle]"
    exit
fi

### CONF ###
conf_file="$(dirname $(readlink -f "$0"))/.redshift"
if [[ ! -f "$conf_file" ]]
then
    echo "$normal_color" > "$conf_file"
fi
current_color=$(tail -n1 "$conf_file")

### FUNCTIONS ###
trigger () {
    if [[ "$1" == "on" ]]
    then
        /usr/bin/redshift -PO "$warm_color" 2>&1 > /dev/null
        echo "$warm_color" | tee "$conf_file"
    elif [[ "$1" == "off" ]]
    then
        /usr/bin/redshift -PO "$normal_color" 2>&1 > /dev/null
        echo "$normal_color" | tee "$conf_file"
    fi
}

### ARGS EXEC ###
if [[ "$1" == "on" ]]
    then trigger $1
fi

if [[ "$1" == "off" ]]
    then trigger $1
fi

if [[ "$1" == "toggle" ]]
then
    if [[ "$current_color" == "$warm_color" ]]
    then
        trigger off
    elif [[ "$current_color" == "$normal_color" ]]
    then
        trigger on
    else
        trigger off
    fi
fi
