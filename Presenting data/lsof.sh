exec 3> testfile1
exec 4> testfile2
exec 7< testfile

lsof -a -p  $$ -d0,1,2,3,4,5,6,7