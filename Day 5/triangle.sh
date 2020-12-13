echo "angle A"
read A
echo "angle B"
read B
echo "angle C"
read C
d=$((A+B+C))
if [ $A -eq 0 -o $B -eq 0 -o $C -eq 0 ]
then
echo "Enter greater than zero"
else
    if [ $d -le 180 ]
    then
    echo "valid "
    else
    echo "not valid "
    fi
fi
