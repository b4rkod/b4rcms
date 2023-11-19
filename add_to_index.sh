#!/bin/sh
FILE=$(basename $1|sed s/.txt/.html/)
echo $FILE
/home/void/www/sh/formatter.sh /home/void/www/blogposts/$(basename $1) >| "$HOME/www/source/blogposts/$FILE"
$HOME/www/sh/add_to_rss.sh $1
sed -i "/\<ul name=blogposts\>/s/$/\n\t\<li\>\<a href=\"blogposts\/$FILE\"\>$FILE\<\/a\>\<\/li\>/" $HOME/www/source/index.html

