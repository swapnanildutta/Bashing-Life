echo "Enter temperature in centigrade:"
read c
f=`expr  9 \* $c / 5  + 32`
echo "The temperature in Fahrenheit:$f"
