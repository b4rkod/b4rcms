#!/bin/sh

. ~/.config/b4rcms/basics.sh

for FILE in $(ls $ROOT/blogposts); do
	grep $FILE $DB/blogposts.txt > /dev/null ||echo "$(stat -c "%W" $ROOT/blogposts/$FILE);$FILE" >> $DB/blogposts.txt
done
