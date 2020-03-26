#!/bin/bash

#color_codes

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`

echo "${red}
|------------------------------xxxxxxxx-------------------------------------------|
|           _   _ _____ _____ ____    ____ _____  _  _____                        |
|          | | | |_   _|_   _|  _ \  / ___|_   _|/ \|_   _|                       |
|          | |_| | | |   | | | |_) | \___ \ | | / _ \ | |                         |
|          |  _  | | |   | | |  __/   ___) || |/ ___ \| |                         |
|          |_| |_| |_|   |_| |_|     |____/ |_/_/   \_\_|                         |
|                                     - T00l_by_HBM_D3LT4                         |
|------------------------------xxxxxxxx ------------------------------------------|

"

echo "${yellow}
----------------------------------------------"
echo "|  [+]Initialising scan ..........            |"
echo  "---------------------------------------------"

for site in $(cat list.txt);
do #starts here....
   curl -s -o /dev/null -I -w  "%{http_code}" https://$site --max-time 5;  printf " - $site \n" & done > alive.txt
   #using curl to get the request and fetch out the status code
echo "${green}
----------------------------------------------"
echo "  [+]Loading the results..... please wait....... "
echo "----------------------------------------------"
 cat alive.txt

