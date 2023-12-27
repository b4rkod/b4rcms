#!/bin/sh
FILE=$(basename $1|sed s/.txt/.html/)
echo $FILE
/home/void/www/sh/formatter.sh /home/void/www/blogposts/$(basename $1) >| "$HOME/www/source/trash/trash.html"
scp  $HOME/www/source/trash/trash.html root@23.94.92.217:/var/www/b4rkod/trash/ 
