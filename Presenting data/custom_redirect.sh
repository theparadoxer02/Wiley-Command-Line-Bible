exec 3> custom_redirect.txt
echo "This will show on the monitor"
echo  "This will go to the file" >&3
echo "This will show on the screen"