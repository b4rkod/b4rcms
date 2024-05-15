#!/bin/sh
. ~/.config/b4rcms/basics.sh
rsync -al ~/www/source/* $SERVERFILE
