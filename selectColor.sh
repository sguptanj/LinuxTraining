#!/bin/bash --
#Script to request the user to select the color

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
