#!/usr/bin/env bash

warning=85
critical=95

pcent=$(zpool list -o cap -H $1 | tr -d '%')
json_fmt='{"text": "%s" , "class": "%s" }\n'

if [[ -z $pcent ]]
then
    echo -e "Usage: ./zfs.sh [zpool_name]\nexemple : ./zfs.sh zroot"
else
    if [[ $pcent -lt $warning ]]
    then
        printf "$json_fmt" "$pcent" "normal"
    elif [[ $pcent -ge $warning ]] && [[ $pcent -lt $critical ]]
    then
        printf "$json_fmt" "$pcent" "warning"
    elif [[ $pcent -ge $critical ]]
    then
      printf "$json_fmt" "$pcent" "critical"
    fi
fi
