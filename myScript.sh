#!/bin/bash --
#this script is know secured from spoofing
#to prevent the scripts from the spoofing we just need to add -- at the end of the  shebang parameter
#The task of this script is to print the hello world
var1="Hello"
var2="World"
echo "$var1 $var2"

#Adding the shell parameters to the Shell script
echo "The zeroth parameter is the script itself which is $0"
echo "The first parameter is $1"
echo "The second parameter is $2"
echo "The third parameter is $3"
echo "The fourth paramter is $4"

#Adding the condition to check if the user has specified any parameter or not
if [ "$#" == "0" ]
 then
  echo "Please specify an input parameter"
  exit 1
fi

#Adding a while loop for the checking the input parameter
while (( "$#" ))
 do 
  echo "You gave me $1"
  shift
 done

#Adding the code to  request the user for his name and print his name
echo "Please enter your name "
read user_name
echo "Welcome Mr. $user_name, Hope you have a great day ahead Sir!"
