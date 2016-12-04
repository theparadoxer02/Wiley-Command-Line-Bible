while [ -n "$1" ]
do
	case "$1" in
	-a) echo "Found the -a option" ;;
	-b) echo "found the -b option" ;;
	-c) echo "Found the -c option" ;;
	--) shift
		break ;;
	*)echo "$1 is not an option";;
	esac
	shift
done

count=1
for param in "$@"
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done
