if read -t 3 -p "Enter a value "
	then
		printf "\nYou entered the value $REPLY\n"
	else
		printf "\nSorry Time out\n"
fi