exec 3<> stderr.txt
read line <&3
echo "Read: $line"
echo "This is  a test line" >&3