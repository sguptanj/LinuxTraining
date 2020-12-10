#!/bin/bash
#To check the input state

echo "Enter the State Name: "
read state

case $state in
	"Uttar Pradesh")
		echo "Capital is Lucknow";;
	"Punjab" | "Haryana")
		echo "Capital is Chandigarh";;
	"Delhi")
		echo "Capital is Delhi too!";;
	*)
		echo "You have discovered a new state it seems ....";;
esac

