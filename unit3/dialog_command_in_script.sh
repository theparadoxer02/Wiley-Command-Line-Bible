temp=`mktemp -t test.XXXXX`
temp2=`mktemp -t test2.XXXXX`

function diskspace {
	df -k > $temp
	dialog --textbox $temp 20 60
}

function whoseon {
	who > $temp
	dialog --textbox $temp 20 50
}

function memusage {
	cat /proc/meminfo > $temp
	dialog --textbox $temp 20 50
}

while [ 1 ]
do

	dialog --menu "Sys admin Menu " 20 30 10 1 "Display disk space" 2 "Display Who is logged in" 
	3 "Display the memory usage" 0 "Exit"
	if [ $? -eq 1 ]
	then
		break
	fi

	selection=`cat $temp2`
	case $selection in 
		1)
			diskspace ;;
		2)
			whoseon ;;
		3)
			memusage ;;
		0)
			break ;;
		*)
			dialog --msgbox "Sorry,invalid selection" 10 30
		esac
done
rm -f $temp 2> /dev/null
rm -f $temp2 2> /dev/null