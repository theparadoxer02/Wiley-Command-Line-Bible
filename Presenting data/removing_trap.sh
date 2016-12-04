
trap "echo Good bye" EXIT
for (( i=0; i<10; i++))
do
	echo "This is running";
done
trap - EXIT
echo "Removed the trap"