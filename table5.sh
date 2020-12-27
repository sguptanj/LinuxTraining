#!/bin/bash --
#To print the table of 5
for ((i=1; i<=10; i++))
 do
    table=4
    temp=$(($i*$table))
    echo "$i * 4 = $temp"
done
