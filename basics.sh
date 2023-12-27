#!/bin/sh
header() {
printf \ "
<!DOCTYPE html>
<html lang="en">
<head>

<link rel="icon" type="image/png" sizes="32x32" href="/etc/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/etc/favicon-16x16.png">
<link rel="manifest" href="/etc/site.webmanifest">
<meta charset="utf-8">

<link rel="stylesheet" href="/etc/style.css">
<title>Barkod's Basement</title>
</head>"

printf \ "
<body> 
<h1> $1 </h1> 
<hr>"
printf \ "
<div id="menu" >
  	<a href="/index.html" >Main</a>
  	<a href="/index.html#blogposts" >Blogposts</a>
  	<a href="/index.html#contents" >Contents</a>
  	<a href="/files/files.html" >Library</a>
  	<a href="https://git.b4rkod.net.tr" >git</a>
  	<a href="/rss.xml" >RSS</a>
  	<a href="/index.html#webrings" >webrings</a>
  	<a href="/trash/trash.html" >Trash</a>
</div>
<br>
"
}

footer() {
	printf \ '<br>
<img style=" margin-left: auto; margin-right: auto;display:block"  
title="b4rkod written in lower case" src="/images/b4rkod.png"> 
</body> </html> '
}
