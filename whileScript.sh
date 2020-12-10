#!/bin/bash --
#This script uses while loop to print the number from 10 to 1

counter=10
while [ $counter -ge "0" ]
do
  echo "$counter"
 counter=$((counter-1))
done
