#!/bin/sh

. ~/.config/b4rcms/basics.sh
RSS_FILE="$SOURCE/rss.xml"
echo '<?xml version="1.0" encoding="UTF-8" ?>' >| $RSS_FILE
echo \ "<rss version=\"2.0\">

<channel>
        <title>B4rkod's Basement</title>
        <link>https://b4rkod.net.tr/rss.xml</link>
	<description>My Basement's Window</description>
	<!--item-->]> " >> $RSS_FILE

for LINE in $( tac $DB/blogposts.txt ); do
	DATE=$(date -d @$(echo $LINE | cut -c -10) -R)
	BASE=$(echo $LINE| cut -c 12-)
	FILE=$(cat $ROOT/blogposts/$BASE)
	echo \ "
<item>
	<pubDate>$DATE</pubDate>
	<guid>https://b4rkod.net.tr/$BASE</guid>
	<title>$BASE</title>
	<link>https://b4rkod.net.tr/blogposts/$BASE</link>
	<description><![CDATA[
	$FILE
	]]></description>
</item>"  >> $RSS_FILE

done 


echo \ "
</channel>
</rss>
" >> $RSS_FILE


