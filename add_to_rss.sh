FILE=$(cat $1 | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g'| sed "s#\/#\\\/#g" )

BASE=$(basename $1)

RSS_DATE=$(date -d "$(stat -c %w $1)" -R)
sed -i "/<\!--item-->/s/$/\n<item>\n<pubDate>$RSS_DATE<\/pubDate>\n<guid>https:\/\/b4rkod.net.tr\/$BASE<\/guid>\n<title>$BASE<\/title>\n<link>https:\/\/b4rkod.net.tr\/blogposts\/$BASE<\/link>\n<description><![CDATA[$FILE]]><\/description>\n<\/item>/" "$HOME/www/source/rss.xml"


