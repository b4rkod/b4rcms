#!/bin/sh

cd $HOME/www/$1 || break
for F in $(ls); do
FILE=$(basename $F|sed s/.txt/.html/)
echo $FILE
$HOME/www/sh/formatter.sh $F >| "$HOME/www/source/$1/$FILE"
done

