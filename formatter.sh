#!/bin/sh
. $HOME/www/sh/basics.sh
header $(basename $1|sed s/txt$/html/)

printf "<p> date : $(stat -c '%w' $1| cut -d " " -f 1)\n "
sed "/\/\/\//s/$/<\/p>/;/\/\/\//s/\/\/\//<p> /" $1

footer 
