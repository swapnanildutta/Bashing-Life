echo "Enter two numbers:"
read x
read y
a=`expr $x + $y`
b=`expr $x - $y`
c=`expr $x \* $y`
d=`expr $x / $y`
e=`expr $x % $y`
echo $a
echo $b
echo $c
echo $d
echo $e
