clear
figlet Scan network clients :

echo "---------------------"
echo "Doesn't work in windows try to download nmap in windows !"
echo "---------------------"

ifconfig

echo "---------------------"
echo "Doesn't work in windows try to download nmap in windows !"
echo "---------------------"

read -p "Type your router ip : " ip

if [[ $ip != "" ]]; then
    nmap -sn $ip-255
fi