checkroot() {

if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[1;77mPlease, run this program as root!\n\e[0m"
   exit 1
fi

}

checkroot

apt-get update && apt-get upgrade

apt-get install wget

apt-get install php

apt-get install python

apt-get install neofetch

apt-get install net-tools

apt-get install netcat

apt-get install nmap

apt-get install figlet

apt-get install git

apt-get install metasploit-framework

pip3 install pyngrok

pip3 install colorama

pip3 install requests

clear

echo "---------------------"
echo "Make sure that Metasploit is still working !"
echo "---------------------"

echo "---------------------"
echo "Most of tools are installed !"
echo "---------------------"