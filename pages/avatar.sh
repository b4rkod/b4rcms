#!/bin/sh
#compile the index.html

. ~/.config/b4rcms/basics.sh 

echo "$(
	header 
	echo \ "
		<img src="/files/b4rkod_avatar.png">
		<img src="/files/b4rkod_avatar_1.jpg">
		<img src="/files/b4rkod_avatar_2.jpg">
		"
	footer
)" >| $SOURCE/avatar.html
