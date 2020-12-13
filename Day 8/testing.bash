echo "enter maximum number"
read n
echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
    read num[$i]
done
for (( i = 0; i < $n ; i++ ))
do
    for (( j = $i; j < $n; j++ ))
    do
        if [ ${num[$i]} -gt ${num[$j]}  ]; then
            t=${num[$i]}
            num[$i]=${num[$j]}
            num[$j]=$t
        fi
    done
done
echo -e "\nSorted Numbers "
for (( i=0; i < $n; i++ ))
do
    echo ${num[$i]}
done