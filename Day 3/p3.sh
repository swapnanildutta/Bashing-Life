echo "Enter 3 Numbers:"
read a b c

if [ $a -ge $b -a $a -ge $c ]
then
	echo "Largest: $a"
	echo ""
else if [ $b -ge $a -a $b -ge $c ]; then
	echo "Largest: $b"
	echo ""
else
	echo "Largest: $c"
	echo ""
fi
fi
