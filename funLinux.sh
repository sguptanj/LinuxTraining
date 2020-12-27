#!/bin/bash --
#Understanding the functions

echo "*****Normal Function******"
function Welcome(){
	echo "Welcome to the class of Function"
}

Welcome

echo "******Parametrised Function*****"
function Study(){
        echo "In this class you will study about $1"
}

Study Linux
Study Python
Study DevOps
