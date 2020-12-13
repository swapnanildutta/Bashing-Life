read -p "Enter Student Name: " name
read -p "Enter SGPA: " sgpa
echo "--------------------------------"
echo "Student Name: $name\nSGPA: $sgpa"
case $sgpa in
10) echo "Grade: O";;
9) echo "Grade: E";;
8) echo "Grade: A";;
7) echo "Grade: B";;
6) echo "Grade: C";;
5) echo "Grade: D";;
4|3|2|1) echo "Grade: F";;
*) echo "Invalid!!"
esac
