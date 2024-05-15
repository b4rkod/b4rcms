
#!/bin/sh

. ~/.config/b4rcms/basics.sh 

	echo \ "
		<?xml version="1.0" encoding="UTF-8" ?>
		<rss version="2.0">

		<channel>
		"
	echo "<title>b4rkod's Basement</title>"
	echo " <link>https://b4rkod.net.tr/rss.xml</link> "
	echo "<description>My Basement's Window</description>"
	echo '<!--item--> '

	for FILE in $(ls --time=creation -t $ROOT/blogposts) ; do
	RSS_DATE=$(date -d "$(stat -c %w $ROOT/blogposts/$FILE)" -R)
	echo \ "
		<item>
		<pubdate>$RSS_DATE<\/pubdate>
		<guid>https:\/\/b4rkod.net.tr\/$FILE<\/guid>
		<title>$FILE<\/title>
		<link>https:\/\/b4rkod.net.tr\/blogposts\/$FILE<\/link>
		<description><![cdata[$FILE]]><\/description>
		<\/item>/" 
	done
