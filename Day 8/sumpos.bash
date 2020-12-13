#!/bin/bash
#declare -a arr1
echo -n "Enter array elements: "
read -a arr
sum=0
echo -n "Array elements: "
for elem in ${arr[@]}
do 
    echo -ne "$elem  "
    if [ $elem -ge 0 ]; then
        sum=`expr $sum + $elem`;
    fi
done
echo
echo -n "Sum of positive numbers is $sum."
echo