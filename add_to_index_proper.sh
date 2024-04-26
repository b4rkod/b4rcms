#!/bin/bash
cp -r $HOME/www/source /tmp/source
FILE=$(basename $1|sed s/.txt/.html/)
echo $FILE
/home/void/www/sh/formatter.sh /home/void/www/blogposts/$(basename $1) >| "$HOME/www/source/blogposts/$FILE"
scp $HOME/www/source/blogposts/$FILE root@23.94.92.217:/var/www/b4rkod/blogposts/ &
$HOME/www/sh/add_to_rss.sh $1
sed -i "/id=\"blogposts\"/s/$/\n\t\<li\>\<a href=\"blogposts\/$FILE\"\>$FILE\<\/a\>\<\/li\>/" $HOME/www/source/index.html

scp $HOME/www/source/{index.html,rss.xml} root@23.94.92.217:/var/www/b4rkod/ &

