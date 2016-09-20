#!/bin/bash
urll=$(echo -e | dmenu -fn 'hack-10' -h 20 -nb '#202020' -nf '#FFFFFF' -sf '#dc322f' -sb '#202020' -p "gsearch >" -w 500 -o 0.9 -y 21 -q)

lucky(){ url=$(echo "http://www.google.com/search?hl=en&q=$@&btnI=I%27m+Feeling+Lucky&aq=f&oq=" | sed 's/ /+/g'); google-chrome-stable --app=$url; };

if [[ $urll != "" ]]
then
    lucky $urll
fi
