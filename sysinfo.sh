#!/bin/bash

echo ""
echo -e "\e[32m ########################################## \e[0m"
echo -e "\e[32m #######        System info         ####### \e[0m"
echo -e "\e[32m ########################################## \e[0m" 

uname -a

echo
# echo -e "\e[32m ########################################## \e[0m"
echo -e "\e[32m #######      Samba Server info     ####### \e[0m"
# echo -e "\e[32m ########################################## \e[0m" 

# sudo systemctl --no-pager status smbd  
sudo systemctl --no-pager status smbd | grep "active (running)"

echo
# echo -e "\e[32m ########################################## \e[0m"
echo -e "\e[32m #######   flir Camera Server info  ####### \e[0m"
# echo -e "\e[32m ########################################## \e[0m" 

sudo systemctl --no-pager status flir-server.service | grep "active (running)"

echo 
# echo -e "\e[32m ########################################## \e[0m"
echo -e "\e[32m #######      TTY cntr signals      ####### \e[0m"
# echo -e "\e[32m ########################################## \e[0m" 

stty -a | grep -Ewoe '(intr|quit|susp) = [^;]+'

echo -e "\e[0m "

$SHELL