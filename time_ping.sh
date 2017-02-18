#!/bin/bash  
	iterate=1
	ping -c $1 google.com | while read list
	do 
            echo  $(tput setaf $iterate) `date` .. $list
		((iterate++))
	done
	
