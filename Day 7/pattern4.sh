#!/bin/bash

read -p "Enter the size of square: " size
clear
len=`expr 2 \* $size`
col=tput cols
row=tput lines
for((i=1; i<=size; i++))
{
    if [ $i -eq 1 -o $i -eq $size ]
    then
        for (( j=1; j<=size; j++))
        {
            p=`expr 2 \* $j`
            tput cup $i $p
            echo "*"
        }
    else
        tput cup ((`expr $col / 2 + $i`) (`expr $row / 2`))
        echo "*"
        tput cup ((`expr $col / 2 + $i`) (`expr $row / 2 + $len`))
        echo "*"
    fi
}