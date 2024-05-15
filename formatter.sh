#!/bin/sh
. $HOME/www/sh/basics.sh

header $(basename $1)
printf "<p> date : $(stat -c '%w' $1| cut -d " " -f 1)\n "
cat $1

footer 
