#!/bin/bash
#this is a script without the parameter argument 

while getopts ":abc" option;
do
   case $option in
   a)
    echo "received -a"
    ;;
   b)
    echo "received -b"
    ;;
   c)
    echo "received -c"
    ;;
   *)
    echo "invalid option $option"
    ;;
esac
done
