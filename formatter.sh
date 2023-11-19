printf "<html>\n <head>\n <meta charset="utf-8">\n<link rel="ICON" href="/etc/favicon.ico"/>\n<link rel="stylesheet" href="/etc/style.css">\n <title>Barkod's Basement</title>\n <h1 align="center"> $(basename $1|sed s/txt$/html/) </h1> </head>\n <body>\n<hr>\n "
printf "<link rel="apple-touch-icon" sizes="180x180" href="/etc/apple-touch-icon.png">\n <link rel="icon" type="image/png" sizes="32x32" href="/etc/favicon-32x32.png">\n <link rel="icon" type="image/png" sizes="16x16" href="/etc/favicon-16x16.png">\n <link rel="manifest" href="/etc/site.webmanifest">\n <link rel="mask-icon" href="/etc/safari-pinned-tab.svg" color="#5bbad5">\n <meta name="msapplication-TileColor" content="#da532c">\n <meta name="theme-color" content="#ffffff">\n"
printf "<div id="menu" >\n <a href="/index.html" >Main</a>\n <a href="/index.html#blogposts" >Blogposts</a>\n <a href="/index.html#contents" >Contents</a>\n <a href="files/files.html" >Library</a> \n <a href="https://git.b4rkod.net.tr" >git</a>\n <a href="https://b4rkod.net.tr/rss.xml" >RSS</a> <a href="https://b4rkod.net.tr/#webrings" >webrings</a></div>\n "

printf "<p> date : $(stat -c '%w' $1| cut -d " " -f 1)</p>\n "
sed "s/^/<p> \&nbsp \&nbsp /;s/$/<\/p>/" $1
printf  " </body>\n <html>\n"
