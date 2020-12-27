#!/bin/bash
# This new script is designed for the educational purpose

if [ "$#" == "0" ]
 then
  echo  "pass alteast one Parameter"
   exit 1
fi

while (( $# ))
 do 
    echo "You gave me $1"
    shift
 done
