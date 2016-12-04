count=1
cat ../output.txt | while read line
do
	echo "line $count : $line"
	count=$[ $count + 1 ]
done
echo "Finished running the script"