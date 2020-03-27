#!/bin/bash -x
validPattern="^[A-Z][a-z]{3,}$"
name=""
read -p "enter first name: " name
if [[ $name =~ $validPattern ]]
then
	echo "valid"
else
	echo "invalid"
fi
lastName=""
read -p "enter last name: " lastName
if [[ $lastName =~ $validPattern ]]
then
   echo "valid"
else
   echo "invalid"
fi

