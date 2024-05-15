#!/bin/sh
TABNAME="Barkod\'s Basement"
ROOT="$HOME/www"
SOURCE="$ROOT/source"
PATH="$PATH:$ROOT/sh"
SERVER="root@23.94.92.217"
SERVERFILE="$SERVER:/var/www/b4rkod/"

header() {
	printf \ "
	<!DOCTYPE html>
	<html lang="en">
	<head>

		<link rel="icon" type="image/png" sizes="32x32" href="/etc/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/etc/favicon-16x16.png">
		<meta charset="utf-8">

		<link rel="stylesheet" href="/etc/style.css">
		<title> $TABNAME  $([ $1 ] && printf "| $1") </title>


	</head> 

	<body> 
	<h1> $( [ $1 ] && printf "$1" || printf " $TABNAME") </h1> 
		<hr> 

		<div id="menu" >
			<a href="/index.html" >Main</a>
			<a href="/blogposts.html" >Blogposts</a>
			<a href="/tools_i_use.html" >tools i use</a>
			<a href="https://git.b4rkod.net.tr" >git</a>
			<a href="https://b4rkod.net.tr/#webrings" >webrings</a>
			<a href="https://b4rkod.net.tr/avatar.html" >avatar</a>
			<a href="https://b4rkod.net.tr/rss.xml" >RSS</a>
			<a href="/twtxt.txt" >twtxt</a>

		</div>
		<br> 
		<div id="main">
	"
}

footer() {
		printf \ '
		</div >
		<br>
		<img style=" margin-left: auto; margin-right: auto;display:block"  
		title="b4rkod written in lower case" src="/images/b4rkod.png"> 
	</body> 
	</html> '
}
