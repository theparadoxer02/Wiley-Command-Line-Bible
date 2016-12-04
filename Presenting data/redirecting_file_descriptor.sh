exec 3>&1
exec 1>test14out

echo "This will be stored in the file"
echo "Along with this file"

exec 1>&3

echo "Now things should be back to normal"