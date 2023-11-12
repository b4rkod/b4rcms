#!/bin/sh
cd $HOME/www/blogposts
FILE=$(basename $1|sed s/.txt/.html/)
echo $FILE
/home/void/www/sh/formatter.sh /home/void/www/blogposts/$(basename $1) >| "$HOME/www/source/$FILE"
sed -i "/\<ul name=blogposts\>/s/$/\n\t\<li\>\<a href=\"$FILE\"\>$FILE\<\/a\>\<\/li\>/" $HOME/www/source/index.html

