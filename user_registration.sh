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

email=""
validEmail="^[a-zA-z0-9]{3,}+[@][a-zA-z0-9]{3,}+[.][a-ZA-Z]{3,}$"
read -p "enter email"  email
if [[ $email =~ $validEmail ]]
then
	echo "valid"
else
	echo "invalid"
fi

