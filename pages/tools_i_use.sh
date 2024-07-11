#!/bin/sh
#compile the tools_i_use.html

. ~/.config/b4rcms/basics.sh 

echo "$(
header 

echo \ "
<h3>Hardware i use</h3>

<dl>

<dt>Hardware

<dd>I currently use a <a href="https://www.thinkwiki.org/wiki/Category:X201"> Thinkpad X201 M540</a> named Asena. Linux runs on any hardware soo i don't really care about the performance and the keyboard and the trackpoint just makes her perfect for me. I maxxed out everything i could on her, the only thing i could upgrade is a msata drive, which is on the list.

</dl>

<h3>Software i use</h3>

<dl>
<dt>Distro

<dd> I use<a href="https://artixlinux.org"> Artix Gnu/Linux</a> for desktop but i have no hard feeling about distros. 
<dd> my servers run the latest version of debian, i don't remember which version. 

<dt>WM

<dd>I use <a href="https://dwm.suckless.org">DWM</a> because it is just great. I use it without any patches, disabled layouts, can't change the number of windows in the left side and deleted all code related to starting other programs. I like it more when sxhkd starts my programs, not dwm.

<dt>Init

<dd>I use <a href="http://smarden.org/runit">Runit</a> because as far as my limited linux experience goes, it is the most stable one. It is also simple stupid if you spare 5 minutes to read the manual. 

<dt>Terminal Emulator

<dd>I use <a href="https://st.suckless.org">St</a> as you would expect, i just have scrollback and anysize patches for it.

<dt>Editor

<dd>I use <a href="https://neovim.io">Neovim</a>, i don't even remember why i use nvim instead of vim directly but i do. Vim is just soo much better, anyone that says it isn't that good or efficient is lying to themselves. You can only gain from using vim.

<dt>Shell

<dd>I use bash as interactive shell because it was the one the system came with. I try to keep the shell close to default,my .bashrc is only 66 lines. /bin/sh is symlinked to dash.
"
footer
)" >| $SOURCE/tools_i_use.html
