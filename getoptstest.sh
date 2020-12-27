#!/bin/bash --
#This script contains the getopts option 

while getopts ":abc" option;
do 
 case $option in 
 a)
  echo "received a"
  ;;
 b)
  echo "received b"
  ;;
 c)
  echo "received c"
  ;;
  *)
   echo "received an invalid option $OPTARG"
   ;;
 esac
 done
