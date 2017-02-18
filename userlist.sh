#!/bin/bash

i=1
listOfUsers=`cut -d ":" -f1 /etc/passwd`

for j in $listOfUsers
do
        echo "USER #$i = $j"
        i=$((i+1))
done
