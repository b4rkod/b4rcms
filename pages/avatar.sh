#!/bin/sh
#compile the index.html

. ~/.config/b4rcms/basics.sh 

avatar_database.sh


printf "$(

header avatar.html;

printf \ "
";

for LINE in $( tac $DB/avatar.txt ) ; do
	DATE=$(date -d @$(echo $LINE | cut -c -10) "+%d %b %Y, %a")
	FILE=$(echo $LINE| cut -c 12-)
	echo "<a href=\"/OC/normal/$FILE\"><img src=\"/OC/small/$FILE\"></a>"
done

footer
)" >| $SOURCE/avatar.html
