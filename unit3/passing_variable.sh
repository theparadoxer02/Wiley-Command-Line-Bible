function addem {
	if [ $# -eq 0 ] || [ $# -gt 2]
	then
		echo -1
	elseif [ $# -eq 1 ]
	then
		echo $[ $1 + $1 ]
	else
		echo $[ $1 + $2 ]
	fi
}
echo "Adding 10 + 15"
value=`addem 10 15`
echo $value
echo "Add 10 ,15 and 14"
value=`addem 10 15 191
echo $val
echo "Adding 10"
value='addem 10'
echo $value