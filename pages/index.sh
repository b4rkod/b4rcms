#!/bin/sh
#compile the index.html

. ~/.config/b4rcms/basics.sh 

echo "$(
	header 
	echo \ "
		<h3> Welcome To My Digital Basement, Traveler</h3>"
	
	echo '<hr style="max-width: 200px; margin-left: 40px;" >'
	echo \ "
		<img src="/files/b4rkod_avatar.png" align="right">
		<p>Anyways!<p>
		<p>In this site i will post crazy weird ramblings about technology with maybe my awful c practices scattered here and there.</p>
		<p>I know my website doesn't look like much right now but i am stable and can be trusted with long, tedious labour with no immediate returns soo i will fill it with thingies and stuff. Pinkie promise...</p> 

	<h2 > Contents </h2> "

	echo \ "
	<ul id="contents">
		<li><a href=/blogposts.html >Blogposts</a></li>
		<li><a href="https://git.b4rkod.net.tr">git</a></li>
		<li><a href=/tools_i_use.html >Tools i use</a></li>
		<li><a href=https://b4rkod.net.tr/#webrings >webrings</a></li>
		<li><a href=https://b4rkod.net.tr/avatar.html >avatar</a></li>
		<li><a href=https://b4rkod.net.tr/rss.xml >RSS</a></li>
		<li><a href=/twtxt.txt >twtxt</a></li>
		<li><a href=files/files.html >Library</a></li>
		<li><a href=/trash/trash.html >Trash</a></li>
	</ul>
		"
	printf \ "
		<h2 id="webrings">  Webrings I am in </h2>
		<ul>
			<li><a href="lain_webring/webring.html">Lainchan Webring</a>
			<li><a href="agora_webring/index.html">Agora Webring</a>
		</ul>
		<h2> Contact </h2>

	<ul>
		<li><a href="mailto:lllillilll@protonmail.com" >lllillilll@protonmail.com</a>
		<li> irc.b4rkod.net.tr (6667 for no SSL, 6697 for SSL)
		<li>I will set up my own mail here, eventually
	"
	footer
)" >| $SOURCE/index.html
