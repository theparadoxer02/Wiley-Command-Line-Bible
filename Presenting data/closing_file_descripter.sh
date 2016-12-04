exec 1>> stderr.txt
echo "This will be appended to the file"
exec 3>&-
echo "This wouldn't work" >&3
