. ~/.config/b4rcms/basics.sh

for FILE in $(ls $ROOT/blogposts); do
	DATE=$(date -d @$(grep $FILE $DB/blogposts.txt |cut -c -10) -R )
	echo $DATE
done
