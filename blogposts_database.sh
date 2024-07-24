#!/bin/sh

. ~/.config/b4rcms/basics.sh

cd $ROOT/blogposts
for FILE in $(ls); do

	grep -s $FILE $DB/blogposts.txt > /dev/null || stat -c "%W;%n" $FILE >> $DB/blogposts.txt

done
