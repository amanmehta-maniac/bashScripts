#!/bin/bash

i=2
total=0
average ()
{
	#echo $1;
	avg=` ls -l $1 | gawk '{cumSize += $5; p++} END {print cumSize/(p-1)}'`
		avgI=`printf "%.0f" $avg`
	#	echo a $avg;
	echo b $avgI;
}
#a = (1 + no. of files or folders in the given directory)
a=`ls -l $1 | tr -s ' ' | cut -d ' ' -f 9 | wc -l`
a=$(($a - 1));

find_files()
{
	i=$a
		while [ $i -gt 0 ]
			do
				b=`ls -l $1 | tr -s ' ' | cut -d ' ' -f 9 | tail -n $i | head -n 1`
					c=`ls -l $1 | tr -s ' ' | cut -d ' ' -f 5 | tail -n $i | head -n 1`
					if [ $c -ge $avgI ]
						then
							echo -n "$b "
							fi
							i=$(($i - 1))
							done
}

main(){
	average $1
		find_files $1
		printf "\n"
}
main $1
