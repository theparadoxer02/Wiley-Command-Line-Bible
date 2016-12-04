function diskspace {
	clear
	df -e
}

function whoeon {
	clear
	who
}

function memusage {
	clear
	cat /proc/meminfo
}

PS3="Enter option: "
select option in "Display disk space" "Display logged on users" "Display memory usage" "Exit program"
do
	case $option in 
		"Exit program")
			break ;;
		"Display disk space")
			diskspace ;;
		"Display logged on users")
			whoeon ;;
		"Display memory usage")
			memusage ;;
		*)
			clear
			echo "Sorry, wrong selection";;
		esac
	done
	clear