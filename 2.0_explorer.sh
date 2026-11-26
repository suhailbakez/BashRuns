#!/usr/bin/env bash
clear;
now=$(date +'%d-%b-%Y %H:%M %P %Z');

#### Colors ####
red='\e[31m';
green='\e[32m';
blue='\e[34m';
yellow='\e[33m';
clear='\e[0m';

#### Welcome message and Current Directory ####
echo -e "\n${yellow}Hello Beautiful People, Welcome to this Teeny Tiny Explorer!${clear}\n";
echo -e "\n${green}Right now we are in Directory: ${PWD}${clear}\n";

echo -e "\n${red}If you want to Explore any other Directory, Enter the full path here below:${clear}\n";
read -p "" dx;

echo -e "\n${blue}Listing all Files and Directories${clear}\n";

echo -e "\n${yellow}Press arrow keys to move up and down, Press Q to quit${clear}\n";

dx=${dx:-$PWD};

echo -e "${yellow}";
du -sh ${dx}/* | more;
echo -e "${clear}";

#### Character Count ####
echo -e "\n${yellow}Enter a positive quote, phrase or text${clear}\n";
echo
read -p "" txx;

echo -e "\n${green}~~~~~~ ${txx} ~~~~~~${clear}\n";

chars=$(echo -e "${txx}" | tr -d [:blank:] | wc -L);

echo -e "\n${green}Character Count: ${chars}${clear}\n";

echo -e "\n${yellow}Bye! Thank you for visiting, You have a wonderful day ahead!${clear}\n";

exit;
