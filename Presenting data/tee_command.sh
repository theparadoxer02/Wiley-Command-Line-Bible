tempfile = test22file

echo "This is the start of the test" | tee $tempfile
echo "This is the second line of test" | tee -a $tempfile
echo "THis is the third line of the test" | tee -a $tempfile