echo "THis is a test program"
count=1
while [ $count -le 10 ]
do
	echo "Loop #$count"
	sleep 2
	count=$[ $count + 1 ]
done
echo "This is the ed of the program"
