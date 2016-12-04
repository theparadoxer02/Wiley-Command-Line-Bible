count=1
while [ -n "$1" ]
do
	echo "parameter #$count is: $1"
	count=$[ $cout + 1 ]
	shift
done


