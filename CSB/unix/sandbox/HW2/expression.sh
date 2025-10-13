file=$1
column=$2

var1=$(tail -n +2 $file | cut -f $column | sort -nr | head -n 1)

tmp=$(mktemp)
cut -f 1,$column $file > $tmp
name=$(grep $var1 $tmp | cut -f 1)

zeroCount=$(tail -n +2 $file| cut -f $column | grep -c "0")

nonZero=$(tail -n +2 $file | cut -f $column | grep -v "0" | sort -n | head -n 1)

echo $name "has the highest number of occurance" $var1
echo "There are" $zeroCount "gene that has zero expression"
echo "The lowest non-zero gene expression is:" $nonZero


