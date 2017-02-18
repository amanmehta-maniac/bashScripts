#!/bin/bash

x=0
n=$#
while [ $n -gt $x ]
do
	arr[$x]=$1
#echo "arr[$x]" $x
	shift
	x=$(($x+1))
done
y=0;
p=$(($n-1))
while [ $p -gt $y ]
do
	count=$(($y+1))
	while [ $n -gt $count ]
	do
		#echo "$t,$count"
		if [ ${arr[$t]} -gt ${arr[$count]} ]
		then
			save=${arr[$y]}
			arr[$y]=${arr[$count]}
			arr[$count]=$save
		fi
		count=$(($count+1))
#same as ((count++)) or count=$((count + 1))
	done
	y=$(($y+1))
done
echo "${arr[@]}"
exit
