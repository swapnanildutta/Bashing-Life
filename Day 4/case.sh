echo "1.Contents of the file\n2.Present working directory and files under current directory\n3. Current Date\n4. Calender of a particular Year\n5.Exit"
read x
case $x in
1)read -p "Enter filename: " f1
	cat $f1
	;;
2) pwd && ls;;
3) date +%m.%d.%Y;;
4) read -p "Enter year: " year
	cal $year ;;
5) exit;;
*) echo "Wrong input"
esac
