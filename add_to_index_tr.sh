#!/bin/sh
cd $HOME/www/blogposts_tr
FILE=$(basename $1|sed s/.txt/.html/)
echo $FILE
/home/void/www/sh/formatter.sh $HOME/www/blogposts_tr/$(basename $1) >| "/home/void/www/source/blogposts_tr/$FILE"
sed -i "/\<ul name=blogposts\>/s/$/\n\t\<li\>\<a href=\"blogposts_tr\/$FILE\"\>$FILE\<\/a\>\<\/li\>/" $HOME/www/source/index_tr.html
