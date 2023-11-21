printf "<html> <head> <meta charset="utf-8"> <link rel="ICON" href="/etc/favicon.ico"/> <link rel="stylesheet" href="/etc/style.css"> <title>Barkod's Basement</title> <h1 align="center"> $(basename $1|sed s/txt$/html/) </h1> </head> <body><hr> "
printf "<link rel="icon" type="image/png" sizes="32x32" href="/etc/favicon-32x32.png">\n <link rel="icon" type="image/png" sizes="16x16" href="/etc/favicon-16x16.png">\n <link rel="manifest" href="/etc/site.webmanifest">\n <meta name="theme-color" content="#ffffff">\n"
printf "<div id="menu" >\n <a href="/index.html" >Main</a>\n <a href="/index.html#blogposts" >Blogposts</a>\n <a href="/index.html#contents" >Contents</a>\n <a href="files/files.html" >Library</a> \n <a href="https://git.b4rkod.net.tr" >git</a>\n <a href="https://b4rkod.net.tr/rss.xml" >RSS</a> <a href="https://b4rkod.net.tr/#webrings" >webrings</a></div>\n "

printf "<p> date : $(stat -c '%w' $1| cut -d " " -f 1)\n "
sed "/\/\/\//s/$/<\/p>/;/\/\/\//s/\/\//<p> \&nbsp \&nbsp /" $1
printf  " </body> <html>"
