#!/bin/sh

. ~/.config/b4rcms/basics.sh

cd $SOURCE/OC/normal
for FILE in $(ls) ; do
	if ! $(grep -s $FILE $DB/avatar.txt > /dev/null ); then
		stat -c "%W;%n" $FILE >> $DB/avatar.txt
		magick $FILE -resize 128x128\! ../small/$FILE
	fi

done
