echo "enter two numbers"
read a b
echo "Before Swapping $a $b"
a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`
echo "After Swapping $a $b"
