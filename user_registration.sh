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
EmailPattern1="^[a-zA-z0-9]{3,}+[@]{1}"
EmailPattern2="^[a-zA-z0-9]{3,}+[@]{1}[a-zA-z0-9]{3,}"
EmailPattern3="^[a-zA-z0-9]{3,}+[@]{1}[a-zA-z0-9]{3,}+[.][a-ZA-Z]{2,4}$"
validEmail="^[a-zA-z0-9]{3,}+[@][a-zA-z0-9]{3,}+[.][a-ZA-Z]{2,4}$"
read -p "enter email"  email
if [[ $email =~ $validEmail ]]
then
	echo "valid"
else
	echo "invalid"
fi

mobileNumber=""
validNumber="^[0-9]{2} [0-9]{10}$"
read -p "enter mobile number: " mobileNumber
if [[ $mobileNumber =~ $validNumber ]]
then
   echo "valid"
else
   echo "invalid"
fi

password=""
read -p "enter password: " password
if [[ ${#password} -gt 7 && "$password" == *[A-Z]* && "$password" == *[0-9]* && *[\!\@\#\%\*\&\$\=\-]*{1] ]]
then
echo "valid"
else
echo "notvalid"
fi
