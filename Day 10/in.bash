#!/bin/bash
file1=$1
IFS="|"
if [ -f $file1 ]; then
    echo -n "$file1 accepted as input file."
    exec<$file1
    #rm output.txt
    while read line; do
        set $line
        w=`echo $line|wc -w`
        echo -n "Words = $w"
        printf "$line \n">>output.txt
    done
fi
echo
cat output.txt