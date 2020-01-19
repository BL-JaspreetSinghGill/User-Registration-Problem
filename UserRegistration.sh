#!/bin/bash -x

namePattern="^[A-Z]{1}[a-zA-Z]{2,}$";
emailPattern="^[a-zA-Z]{1}[a-zA-Z0-9]*([-.+_]{1}[a-zA-Z0-9]+)?[@]{1}[a-zA-Z0-9]+[.]{1}[a-z]{2,4}([.][a-z]{2})?$";

takeInputForFirstName () {
	read -p "ENTER FIRST NAME : " firstName;
}

takeInputForLastName () {
   read -p "ENTER LAST NAME : " lastName;
}

takeInputForEmail () {
	read -p "ENTER EMAIL : " email;
}

validate () {
	inputPattern=$1;
	pattern=$2;
	message=$3;

	if [[ $inputPattern =~ $pattern ]]
	then
		echo "VALID $message";
	else
		echo "INVALID $message";
	fi;
}

userRegistrationMain () {
	takeInputForFirstName;
	validate $firstName $namePattern "FIRST NAME";
	takeInputForLastName;
	validate $lastName $namePattern "LAST NAME";
	takeInputForEmail;
	validate $email $emailPattern "EMAIL";
}

userRegistrationMain;
