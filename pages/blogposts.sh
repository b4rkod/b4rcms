#!/bin/sh

. ~/.config/b4rcms/basics.sh 


blogposts_database.sh

#compile the blogposts
for LINE in $( tac $DB/blogposts.txt ) ; do
	DATE=$(date -d @$(echo $LINE | cut -c -10) "+%d %b %Y, %a")
	FILE=$(echo $LINE| cut -c 12-)
	mkdir -p $SOURCE/blogposts
	echo "$(
	header $FILE;
	echo "<p> $DATE </p> <hr style=\"max-width: 11em ;margin-left:1em;\" align=\"left\"> "  ;
	cat $ROOT/blogposts/$FILE;
	footer)" >| $SOURCE/blogposts/$FILE
done
#compile the blogpost.html

printf "$(

header blogposts.html;

printf \ "
<h1> Here is all the blogposts i have posted about</h1>
<ul> 
";

for FILE in $( tac $DB/blogposts.txt | cut -c 12- ) ; do
	echo "<li> <a href="blogposts/$FILE">$FILE</a> </li>"
done

footer

)" >| $SOURCE/blogposts.html

