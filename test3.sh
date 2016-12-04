for file in /media/cyborg/61a2749c-e943-494a-864b-7fdf26251e66/*
do 
	if [ -d "$file" ]
		then
			echo "The $file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a directory"
	fi
done


for (( i=1; i <= 10; i++))
	do
		echo "The next number is $i"
	done
