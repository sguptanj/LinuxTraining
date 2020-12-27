#!/bin/bash
#To use the until loop

counter=1
until [ $counter -ge 15 ]
do
  echo "$counter"
   counter=$((counter+1))
done
