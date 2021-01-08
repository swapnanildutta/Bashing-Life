is_palindrome () { 
    local word=$1
    local len=$((${#word} - 1))
    local i
    for ((i=0; i <= (len/2); i++)); do
        [[ ${word:i:1} == ${word:len-i:1} ]] || return 1
    done
    return 0
}

declare -a palins

#read -p "Enter the filename: " $file
file=$1
if [ -f $file ]; then
    echo -n "$file accepted as input file."
    words=$(<$file)
    for word in $words; do
        if is_palindrome $word; then
            palins+=($word)
        fi
    done
fi
echo

#create output file
printf "">$file"output.txt"
for palin in "${palins[@]}"
do
    printf "$palin\n">>$file"output.txt"
done

#display output file
cat $file"output.txt"