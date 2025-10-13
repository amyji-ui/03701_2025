file=$1
id=$2

count=$(cut -f 1 $file | grep -c -w $id)

echo "The total number of occurance for that particular ID is:" $count

IDS=$(tail -n +2 $file | cut -f 1 | sort -n | uniq)
for ID in $IDS
do
	id_count=$(cut -f 1 $file | grep -c -w $ID)
	echo "ID:" $ID "counts:" $id_count
done
