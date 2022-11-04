#! /bin/bash

#control arg
echo "enter value of  n "
read num

int='^[0-9]+$'
if ! [[ $num =~ $int ]]; then
	echo "Error: Write integer number"
	exit 1
fi
if [[ $num -lt 1 ]]; then
        echo "Error: The entered number must be greatest then 1:"
        exit 1
fi



for (( i=1;i<=$num ;i++)); do
   for (( j=$num;j>=i;j-- )); do
   echo -n " "
   done
   for (( c=1;c<=i;c++ )); do
   echo -n " *"
   sum=`expr $sum + 1`
   done
echo ""
done
d_max=`expr $num - 1`
for (( i=$d_max;i>=1;i--)); do
   for (( j=i;j<=$d_max;j++ )); do
   if [ $j -eq $d_max ]; then
   echo -n " "
   fi
   echo -n " "
   done
   for (( c=1;c<=i;c++ )); do
   echo -n " *"
   sum=`expr $sum + 1`
   done
echo ""
done
