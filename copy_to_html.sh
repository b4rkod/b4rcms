#!/bin/sh

for F in $(ls); do
FILE=$(basename $F|sed s/.txt/.html/)
echo $FILE
$HOMe/www/sh/formatter.sh $F >| "$HOME/www/source/$FILE"
done

