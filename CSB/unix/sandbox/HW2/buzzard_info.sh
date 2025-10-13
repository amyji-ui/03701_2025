file=$1
column=$2

col_name=$(cut -d ","  -f $column $file | head -n 1)
echo "Column name:"
echo $col_name

distinct=$(cut -d ","  -f $column $file | sort | uniq | wc -l )
echo "Number of distinct values:"
echo $distinct

Min=$(cut -d "," -f $column $file | tail -n +2 | sort -nr | head -n 1)
Max=$(cut -d "," -f $column $file | tail -n +2 | sort -r | head -n 1)
echo $Min
echo $Max
