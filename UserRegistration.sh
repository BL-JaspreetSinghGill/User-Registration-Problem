#!/bin/bash -x

firstNamePattern="^[A-Z]{1}[a-zA-Z]{2,}$";

takeInputForFirstName () {
	read -p "ENTER FIRST NAME : " firstName;
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
	validate $firstName $firstNamePattern "FIRST NAME";
}

userRegistrationMain;
