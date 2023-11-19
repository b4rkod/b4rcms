BASE=$(basename $1|sed s/txt$/html/)
FILE=$(cat $1|sed -E ':a;N;$!ba; s/\//\\\//g ; s/\r{0,1}\n/<\\\/p>/g;s/^/<p>/;')
echo $BASE

sed -i "/<\!--item-->/s/$/\n\<item><pubDate><\/pubDate><guid>https:\/\/b4rkod.net.tr\/$BASE<\/guid><title>$BASE<\/title><link>https:\/\/b4rkod.net.tr\/blogposts\/$BASE<\/link><description><![CDATA[$FILE]]><\/description><\/item>/" "$HOME/www/source/rss.xml"


