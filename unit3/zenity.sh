temp=`mktemp -t temp.XXXXXX`
temp2=`mktemp -t temp2.XXXXX`

function whoeson {
	who > $temp
	zenity --text-info --title "Disk space" --filename=$temp --width 750 --height 200
}
function diskspace {
	df -k > $temp
	zenity --text-info --title "Disk space" --filename=$temp
	--width 750 --height 10
}

function memusage {
	cat /proc/meminfo > $temp
	zenity --text-info --title "Memory usage" --fileame=$tmp
	--width 300 --height 500
}

while [ 1 ]
do
	zenity --list --radiolist --title "Sys Admin Menu" --column "Select" --column "Menu Item" FALSE 
	"Display disk space" FALSE "Display users" FALSE "Display memory usage" FALSE "Exit" > $temp2

if [ $? -eq 1 ]
	then
		break
	fi


	selection=`cat $temp2`
	case $selection in
		"Display Disk space")
		diskspace ;;
		"Display users" )
		whoeson ;;
		"Display memory usage" )
		memusage ;;
		Exit)
			break ;;

		*)
			zenity --info "Sorry,invalid selection"
		esac
	done


zenity --list --radiolist --title "Sys Admin Menu" --column "Select"
--column "Menu Item" FALSE "Display disk space" FALSE "Display users"
FALSE "Display memory usage" FALSE "Exit" > $temp2