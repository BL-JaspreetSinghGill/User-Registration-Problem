#!/bin/bash -x

namePattern="^[A-Z]{1}[a-zA-Z]{2,}$";

takeInputForFirstName () {
	read -p "ENTER FIRST NAME : " firstName;
}

takeInputForLastName () {
   read -p "ENTER LAST NAME : " lastName;
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
}

userRegistrationMain;
