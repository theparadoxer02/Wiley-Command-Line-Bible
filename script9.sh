var1=1
while [ $var1 -lt 100 ]
do
	if [ $var1 -eq 9 ]
		then
			break
	fi
	echo "Iteration: $var1 "
	var1=$[ $var1 + 1 ]
done
echo "The while loop is complete"