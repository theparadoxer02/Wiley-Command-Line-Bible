function funct1 {
	echo "This is the example of the function"
}
count=1
while [ $count  -le 5 ]
do 
	funct1
	count=$[ $count +1 ]
done
echo "This is the end of the loop"
funct1
echo "This is th end of the script"