for(( i = 0; i < 10; i++))
do
	for(( j = 0; j < 15; j++ ))
	do
		if [ [$j + $i ] -eq 12 ]
		then
				break 2
		fi
		echo "The inner loop is  $i and $j"
	done
done
