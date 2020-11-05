#!/bin/bash
#This script requests the user to enter the name and then prints the user name
echo "Hey! Please enter your name: "
read name
echo "Mr. $name Please enter your age: "
read age
if [ "$age" -ge 18 ]
then
echo "Mr. $name you are elligible for voting"
fi
