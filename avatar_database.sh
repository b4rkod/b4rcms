#!/bin/sh

. ~/.config/b4rcms/basics.sh

for FILE in $(ls $SOURCE/OC/normal); do
	if ! $(grep  $FILE $DB/avatar.txt > /dev/null ); then
		echo "$(stat -c "%W" $SOURCE/OC/normal/$FILE);$FILE" >> $DB/avatar.txt
		magick $SOURCE/OC/normal/$FILE -resize 128x128\! $SOURCE/OC/small/$FILE
	fi

done
