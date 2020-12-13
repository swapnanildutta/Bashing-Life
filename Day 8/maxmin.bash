#!/bin/bash
read -p "Enter array elements: " -a arr
max=0
min=10000
echo -n "Array elements: "
for elem in ${arr[@]}
do 
    echo -ne "$elem  "
    if [ $elem -gt $max ]; then
        max=$elem;
    fi
    if [ $elem -lt $min ]; then
        min=$elem;
    fi
done
echo -e "\nMaximum value: $max"
echo -e "Minimum value: $min"