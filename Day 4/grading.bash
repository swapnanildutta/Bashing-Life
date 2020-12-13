#!/bin/bash

echo "Enter Student Name: "
read name
i=0
total=0
read -p "Enter 5 Marks: " marks
for i in ${marks[@]}
do
        total=`expr $i + $total`
done
gpa=`expr $total / 5`
echo -n "Student $name got marks $gpa and "
if [ $gpa -ge 90 -a $gpa -le 100 ]
then
        echo "Grade O"
elif [ $gpa -ge 80 -a $gpa -le 89 ]
then
        echo "Grade E"
elif [ $gpa -ge 70 -a $gpa -le 79 ]
then
        echo "Grade A"
elif [ $gpa -ge 60 -a $gpa -le 69 ]
then
        echo "Grade B"
elif [ $gpa -ge 50 -a $gpa -le 59 ]
then
        echo "Grade C"
elif [ $gpa -ge 40 -a $gpa -le 49 ]
then
        echo "Grade D"
elif [ $gpa -ge 0 -a $gpa -le 39 ]
then
        echo "Grade F"
else
        echo "Invalid"
fi

