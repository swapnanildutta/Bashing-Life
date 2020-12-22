file1=$1
if [ -f $file1 ]; then
    exec<$file1
    while read line; do
        set `echo $line`
        printf "$1 ">output.txt
    done
fi