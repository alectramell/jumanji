#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

echo "█"
echo "▒"

clear

echo "                                                    "
echo "      ▒██▒██▒██▒████████ ▒████ ▒██  ▒██   ▒██▒██    "
echo "      ▒██▒██▒██▒██▒██▒██▒██ ▒██▒████▒██   ▒██▒██    "
echo "   ▒██▒██▒██▒██▒██▒██▒██▒██████▒██▒████▒██▒██▒██    "
echo "   ▒█████ ▒████▒██   ▒██▒██ ▒██▒██  ▒██▒█████▒██    "
echo "                                                    "
echo "           ${green}..PRESS ${gold}[ANY KEY]${green} TO BEGIN..${reset}             "
echo "                                                    "

read -s -n1

clear

bash jumanji/begin.sh

