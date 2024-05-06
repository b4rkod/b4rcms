#!/bin/sh

. ~/.config/b4rcms/basics.sh 

#compile the blogposts
for FILE in $(ls --time=creation -t $ROOT/blogposts) ; do
	mkdir -p $SOURCE/blogposts
	echo "$(header $FILE; cat $ROOT/blogposts/$FILE; footer)" >| $SOURCE/blogposts/$FILE
done
#compile the blogpost.html

printf "$(
	header blogposts.html;
	printf \ "
		<h1> Here is all the blogposts i have posted about</h1>
	<ul> ";
	for FILE in $(ls --time=creation -t $ROOT/blogposts) ; do
		echo "<li> <a href="blogposts/$FILE">$FILE</a> </li>"
	done
	footer
)" >| $SOURCE/blogposts.html

