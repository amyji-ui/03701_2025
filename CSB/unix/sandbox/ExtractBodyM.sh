tail -n +2 $1 | cut -d ";" -f 2-6 | tr ";" " " | sort -rn -k 6 > $2
