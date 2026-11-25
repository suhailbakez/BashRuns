#!/usr/bin/env bash

now=$(date +'%d-%b-%Y %I:%M %p %Z');

#### Color Variables ####
red='\e[31m';
green='\e[32m';
blue='\e[34m';
yellow='\e[33m';
clear='\e[0m';

#### Task 1 ####
# Total 6 Tasks in this Script

#### Task 2 ####
echo -e "${green} \nObserve, Learn, Grow ${clear}";

#### Task 3 & 4 ####
echo
read -p "Enter First Number: " n1;

echo
read -p "Enter Second Number: " n2;

nsum=$((n1+n2));

echo -e "${blue}\nSum of Both the numbers: ${nsum}\n ${clear}";

#### Task 5 ####
echo -e "${green} Hostname: ${HOSTNAME} ${clear}";
echo -e "${green} Username: ${USERNAME} ${clear}";
echo -e "${green} Shell:  ${SHELL} ${clear}";
echo -e "${green} Current Directory: ${PWD} ${clear}";

#### Task 6 ####
echo
read -p "Enter full path to the Directory: " dx;

echo
read -p "Enter the file type you are looking for (Ex: pdf, jpg, png, xls, etc.): " fx;

fcx=$(ls -a ${dx}/*.${fx} 2> /dev/null | wc -l);

if [ -z ${fcx} ] || [ ${fcx} -eq 0 ];
then
	echo -e "${red}\nNO ${fx} FILES FOUND as of ${now} ${clear}";
else
	echo -e "${green} \nTotal ${fcx} FILES FOUND ${clear}";
	echo -e "${green} \nListing THE FILES BELOW\n ${clear}";
	ls -lh ${dx}/*.${fx} 2> /dev/null;

	echo -e "${yellow} \nThese are ${fcx} files found as of ${now}\n ${clear}"; 
fi

exit;
