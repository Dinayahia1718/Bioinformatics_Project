echo "Enter the file: "
read file
echo -n "1-MSA    2-Tree   3-primer  :  "
read number
echo "Write the name of the output file: "
read fileoutput
if [[ $number == 1 ]]
then 
   muscle -in $file -out $fileoutput.clw -clw
elif [[ $number == 2 ]]
then
   muscle -in $file -out $fileoutput.clw -clw -tree1 $fileoutput.phy
else 
  primer3_core  $file  > $fileoutput.txt
  cat $fileoutput.txt
fi
