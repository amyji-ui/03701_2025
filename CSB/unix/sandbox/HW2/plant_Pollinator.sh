directory=$1


maxRow=0
maxCol=0
fileMaxRows=""
fileMaxCols=""

for file in "$directory"/*
do 
	numRows=$(cat $file | wc -l )
	numCols=$(head -n 1 $file | wc -c)
	echo $file "has:" $numRows "rows, and" $numCols "columns."

        if [ $numRows -gt $maxRow ];
	then
		maxRow=$numRows
		fileMaxRows=$file
	fi

	if [ $numCols -gt $maxCol ];
	then
		maxCol=$numCols
		fileMaxCols=$file
	fi
done

echo
echo "File with most rows is:" $fileMaxRows  ",which has" $maxRow "rows."
echo "File with most cols is:" $fileMaxCols ",which has" $maxCol "columns."
