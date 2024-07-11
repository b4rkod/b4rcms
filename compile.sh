#!/bin/sh

. ~/.config/b4rcms/basics.sh

for f in $(ls $ROOT/sh/pages) ; do 
	$ROOT/sh/pages/$f ;
done
