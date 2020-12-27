#!/bin/bash --
#This code print the table of 6
echo "Printing the table of 6"
for ((i=1;i<10;i++))
  do
   factor=6
   value=$(($i*$factor))
   echo "$i * $factor = $value"
done
