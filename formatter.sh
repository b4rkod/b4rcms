printf "<html>\n <head>\n <meta charset="utf-8">\n<link rel="ICON" href="favicon.ico"/>\n<link rel="stylesheet" href="style.css">\n <title>Barkod's Basement</title>\n <h1 align="center"> $(basename $1|sed s/txt$/html/) </h1> </head>\n <body>\n<hr>\n "
printf "<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">\n <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">\n <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">\n <link rel="manifest" href="/site.webmanifest">\n <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">\n <meta name="msapplication-TileColor" content="#da532c">\n <meta name="theme-color" content="#ffffff">\n"
printf "<p> date : $(date "+%d/%m/%y")</p>\n "
sed "s/^/<p> \&nbsp \&nbsp /;s/$/<\/p>/" $1
printf  " </body>\n <html>\n"
