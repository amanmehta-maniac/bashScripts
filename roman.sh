#!/bin/bash
num=$1;
count=0;
arrs="1000 900 500 400 100 90 50 40 10 9 5 4 1"	
b=(M CM D CD C XC L XL X IX V IV I)
i=0;
#set -- $b
for arr in $arrs
do
	temp=$(( num/arr ));
	#echo $temp;

	num=$(( num % arr ))
	for j in {1..1000}
	do
		#echo $i;
		#echo $temp;
		if [ $temp -eq 0 ]
		then
			break
		fi
		echo -n "${b[$i]}"
		temp=$(($temp - 1))
		#echo $temp
	done
	count=$(( $count + 1 ));
	i=$(($i + 1))
done
printf "\n"

