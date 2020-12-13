read -p "Enter Student Name: " name
read -p "Enter SGPA: " sgpa
echo "--------------------------------"
echo "Student Name: $name\nSGPA: $sgpa"
case $sgpa in
100|9[0-9]) echo "Grade: O";;
90|8[1-9]) echo "Grade: E";;
80|7[1-9]) echo "Grade: A";;
70|6[1-9]) echo "Grade: B";;
60|5[1-9]) echo "Grade: C";;
50|4[1-9]) echo "Grade: D";;
[0-4][0-9]) echo "Grade: F";;
*) echo "Invalid!!"
esac
