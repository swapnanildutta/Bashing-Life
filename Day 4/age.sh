echo "Enter date of birth(dd/mm/yyyy):"
read dob
IFS="/"
set $dob
d=$1
m=$2
y=$3

yy=`date "+%Y"`
mm=`date "+%m"`
dd=`date "+%d"`
if [ $y -le $yy ]
then
yyy=`expr $yy - $y`
mmm=`expr $mm - $m`
if [ $m -gt $mm ]
then
yyy=`expr $yyy - 1`
mmm=`expr $mmm + 12`
fi
if [ $d -gt $dd ]
then
ddd=`expr $d - $dd`
ddd=`expr 31 - $ddd`
else
ddd=`expr $dd - $d`
fi
fi
echo "Your age : $yyy years $mmm months $ddd days"
