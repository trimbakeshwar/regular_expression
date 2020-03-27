#!/bin/bash -x
validPattern="^[A-Z][a-z]{3,}$"
name=""
read -p "enter name " name
if [[ $name =~ $validPattern ]]
then
	echo "valid"
else
	echo "invalid"
fi
