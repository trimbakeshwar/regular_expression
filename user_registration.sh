#!/bin/bash -x
validPattern="^[A-Z][a-z]{3,}$"
EmailPattern1="^[a-zA-z0-9]{3,}+[@]{1}"
EmailPattern2="^[a-zA-z0-9]{3,}+[@]{1}[a-zA-z0-9]{3,}"
EmailPattern3="^[a-zA-z0-9]{3,}+[@]{1}[a-zA-z0-9]{3,}+[.][a-ZA-Z]{2,4}$"
validEmail="^[a-zA-z0-9]{3,}+[@][a-zA-z0-9]{3,}+[.][a-ZA-Z]{2,4}$"
validNumber="^[0-9]{2} [0-9]{10,10}$"

function validation(){
if [[ $1 =~ $2 ]]
then
   echo "valid"
else
   echo "invalid"
fi

}
name=""
read -p "enter first name: " name
validation $name $validpattern

lastName=""
read -p "enter last name: " lastName
validation $lastName $validpattern

email=""
read -p "enter email"  email
validation $email $validEmail

mobileNumber=""
read -p "enter mobile number: " mobileNumber
validation $mobileNumber $validNumber

password=""
read -p "enter password: " password
if [[ ${#password} -gt 7 && "$password" == *[A-Z]* && "$password" == *[0-9]* && *[\!\@\#\%\*\&\$\=\-]*{1,1} ]]
then
echo "valid"
else
echo "notvalid"
fi
