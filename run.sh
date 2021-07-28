checkroot() {

if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[1;77mPlease, run this program as root!\n\e[0m"
   exit 1
fi

}

checkroot

apt-get install figlet

clear

figlet MohamedX

echo "---------------------"

echo "                     "

echo "[1] Trojan Maker"

echo "                     "

echo "[2] Fake Websites"

echo "                     "

echo "[3] Scan network clients"

echo "                     "

echo "[4] Contact us"

echo "                     "

echo "---------------------"



read -sp "Choose : " number

if [[ $number == 1 ]]; then

    bash data/trojan_maker.sh

 fi 

if [[ $number == 2 ]]; then

    bash data/fake_web.sh

 fi 

if [[ $number == 3 ]]; then

   bash data/network_scan.sh 

 fi 


if [[ $number == 4 ]]; then
    clear
    figlet Contact us :

    echo "---------------------"

    echo "                     "

    echo "github : https://github.com/mohamedlhachimi123/ "

    echo "                     "

    echo "instagram : https://www.instagram.com/mohamedlhachimi123/ "

    echo "                     "

    echo "twitter : https://twitter.com/mohamed47019274"

    echo "                     "

    echo "---------------------"
 fi 