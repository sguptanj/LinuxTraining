#!/bin/bash
#This script requests the user to enter the name and then prints the user name
echo "Hey! Please enter your name: "
read name
echo "Mr. $name Please enter your age: "
read age
if [ $age -ge 18 ]; then
  echo "Mr. $name you are elligible for voting"
else
  echo "Mr. $name you are NOT elligible for voting"
fi

#Additional code to fetch the colors from the user
echo "Choose the color from - Red, Green, Blue, Orange"
read color

if [ $color == Red ]
then
     echo "You have selected Bloody $color"

elif [ $color == Blue ]
then
     echo "You have selected a Sky $color"

elif [ $color == Orange ]
then
     echo "You are delitful $color"

elif [ $color == Green ]
then
     echo "You selection is Hara Bhara $color"

else
     echo "Your $color selection is not in the list"

fi
