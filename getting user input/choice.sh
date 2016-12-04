read -n1 -p "Enter your choice y/n "
case $REPLY in
	Y | y) 
		printf "\nContinue on..";;
	N | n) 
		echo "\nOK goodbye";	
		exit;;
esac
printf "\nThis is the end of the script\n"