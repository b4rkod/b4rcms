#!/bin/sh
. $HOME/www/sh/basics.sh

header Library

printf "<ul>\n"
for F in $(cat $HOME/.cache/uploaded_images.txt |cut -d "/" -f 5); do
	echo 
	printf "<li> <a href=\"$F\">$F</a>\n"
done

footer
