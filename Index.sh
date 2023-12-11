#!/bin/bash
# recode ngotak tolol 
#jangan lupa bre startednya ok >.-

__version__="1.0"


## ANSI colors (FG & BG)
R="$(printf '\033[31m')"  
GR="$(printf '\033[32m')"  
O="$(printf '\033[33m')"  
BL="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WT="$(printf '\033[37m')" 
BLK="$(printf '\033[30m')"
RBG="$(printf '\033[41m')"  
GRBG="$(printf '\033[42m')"  
OBG="$(printf '\033[43m')"  
BLBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WTBG="$(printf '\033[47m')" 
BLKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

#------------------------ Check Internet Status--------------------#
check_status() {
    echo -ne "\n${GR}[${WT}+${GR}]${CYAN} Internet Status : "
    timeout 3s curl -fIs "https://api.github.com" > /dev/null
    [ $? -eq 0 ] && echo -e "${GR}Online${WT}" || echo -e "${R}Offline${WT}"
}

#------------------------Script termination------------------------$
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${R}[${WT}!${R}]${R} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${R}[${WT}!${R}]${R} Program Terminated." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

#-------------------------- Reset terminal colors------------------------#
reset_color() {
    tput sgr0   # reset attributes
    tput op     # reset color
    return
}


#-------------------------------- Exit message-------------------------#
msg_exit() {
    { clear; banner1; }
    echo -e "${GRBG}${BLK} Thank you for using this tool. Have a good day.${RESETBG}\n"
    { reset_color; exit 0; }
    sleep 2
    clear
}

#---------------------------- Banner 1 --------------------------------#
banner1() {
printf "╔╦╗ ╦ ╦ ╔═╗ ╔╗╔ ╦╔═ ╔═╗   ╦ ╦ ╔═╗ ╦ ╦  \e[0m\n"
printf " ║  ╠═╣ ╠═╣ ║║║ ╠╩╗ ╚═╗   ╚╦╝ ║ ║ ║ ║  \e[0m\n"
printf " ╩  ╩ ╩ ╩ ╩ ╝╚╝ ╩ ╩ ╚═╝    ╩  ╚═╝ ╚═╝  \e[0m\n"

}

#---------------------------- Banner --------------------------------#
banner() {
clear
check_status
printf "\e[0m\n"
printf "\e[0m\e[1;32m   ┳ ┳ ┏━┓ ┳   ┏━┓ ┏━┓ ┏┳┓ ┏━┓   ┏┳┓ ┏━┓   ┳ ┳ ┏━┓ ┳ ┳   \e[0m\n"
printf "\e[0m\e[1;32m   ┃┃┃ ┣┫  ┃   ┃ ┃ ┃   ┃┃┃ ┣┫     ┃  ┃ ┃   ┗┳┛ ┃ ┃ ┃ ┃   \e[0m\n"
printf "\e[0m\e[1;32m   ┗┻┛ ┗━┛ ┻━┛ ┗━┛ ┗━┛ ┻ ┻ ┗━┛    ┻  ┗━┛    ┻  ┗━┛ ┗━┛   \e[0m\n"
printf "\e[1;32m                            In Code \e[0m\e[1;33mBash  \e[0m\e[1;31mVersion : ${__version__}    \e[0m\n"
printf "\e[0m\n"
printf "   \e[0m\e[1;37m┌─────────────────────────────────────────┐ \e[0m\n"
printf "\e[0m\e[1;33m   \e[0m\e[1;37m│  \e[0m\e[1;33mCreated By ./B7 \e[0m\e[1;31m(\e[0m\e[1;33m PMC MALWARE CYBER \e[0m\e[1;31m)  \e[0m\e[1;37m│  \e[0m\n"
printf "   └─────────────────────────────────────────┘"
printf "\e[0m\n"
}

#---------------------------INSTALL BAHAN-----------------------#
install_bahan() {
  banner
  echo " "
  printf " \e[0m\e[1;93mSEBELUM LANJUT INSTALL BAHANNYA DULU BRO \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m NO\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m YES\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' bahan

if [[ $bahan == 1 || $bahan == 01 ]]; then
msg_exit
elif [[ $bahan == 2 || $bahan == 02 ]]; then
pilih
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
install_bahan
fi
}

pilih() {
banner
  echo " "
  printf " \e[0m\e[1;93mSEBELUM LANJUT INSTALL BAHANNYA DULU BRO ! \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m TERMUX\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m LINUX\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m00\e[0m\e[1;91m]\e[0m\e[1;93m BACK TO MENU\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' bahan

if [[ $bahan == 1 || $bahan == 01 ]]; then
clear
echo " "
echo "╦ ╔╗╔ ╔═╗ ╔╦╗ ╔═╗ ╦   ╦   ╦ ╔╗╔ ╔═╗  "
echo "║ ║║║ ╚═╗  ║  ╠═╣ ║   ║   ║ ║║║ ║ ╦ "
echo "╩ ╝╚╝ ╚═╝  ╩  ╩ ╩ ╩═╝ ╩═╝ ╩ ╝╚╝ ╚═╝ ╻ ╻ ╻ ╻ ╻  "
echo " "
echo $O"Installing packages......."
echo " "
pkg update && upgrade -y
pkg install git
pkg install python
pkg install python2
pkg install neofetch
pkg install wget
pip install requests
pip2 install requests
pip install bs4
pip install rich
pip install stdiomask
sleep 1
clear
echo " "
printf " \e[0m\e[1;93mINSTALLING SELESAI MENCOBA MASUK !\e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 1
update
elif [[ $bahan == 0 || $bahan == 00 ]]; then
install_bahan
elif [[ $bahan == 2 || $bahan == 02 ]]; then
clear
echo " "
echo "╦ ╔╗╔ ╔═╗ ╔╦╗ ╔═╗ ╦   ╦   ╦ ╔╗╔ ╔═╗  "
echo "║ ║║║ ╚═╗  ║  ╠═╣ ║   ║   ║ ║║║ ║ ╦ "
echo "╩ ╝╚╝ ╚═╝  ╩  ╩ ╩ ╩═╝ ╩═╝ ╩ ╝╚╝ ╚═╝ ╻ ╻ ╻ ╻ ╻  "
echo " "
echo $O"Installing packages......."
echo " "
sudo apt-get update && upgrade -y
sudo apt-get install git
sudo apt-get install python
sudo apt-get install python2
sudo apt-get install neofetch
sudo apt-get install wget
sudo pip install requests
sudo pip2 install requests
sudo pip install bs4
sudo pip install rich
sudo pip install stdiomask
sleep 1
clear
echo " "
printf " \e[0m\e[1;93mINSTALLING SELESAI MENCOBA MASUK !\e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 1
update
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
pilih
fi
}

#----------------------------UPDATE SCRIPT-----------------#
update() {
clear
printf "\e[0m\n"
sleep 1
printf "\e[1;31mFollow me one github\e[0m" 
 echo 
 echo -e "\E[1;33m:::::::::::::: \e[97m  PMC MALWARE CYBER  \E[1;33m:::::::::::::::"
printf "\e[0m\n"
printf "\e[97m╦╔═ ╔═╗ ╔╗╔ ╔═╗ ╦ ╦═╗ ╔╦╗ ╔═╗ ╔═╗ ╦  \e[0m\n"
printf "\e[97m╠╩╗ ║ ║ ║║║ ╠╣  ║ ╠╦╝ ║║║ ╠═╣ ╚═╗ ║  \e[0m\n"
printf "\e[97m╩ ╩ ╚═╝ ╝╚╝ ╚   ╩ ╩╚═ ╩ ╩ ╩ ╩  ═╝ ╩  \e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;93mAPAKAH ANDA AKAN MENGUPDATE SCRIPT INI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m NO\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m YES\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' update

if [[ $update == 1 || $update == 01 ]]; then
banner2
menu
elif [[ $update == 2 || $update == 02 ]]; then
clear
printf "\e[0m\n"
printf "\e[97m╦ ╦ ╔═╗ ╔╦╗ ╔═╗ ╔╦╗ ╔═╗  \e[0m\n"
printf "\e[97m║ ║ ╠═╝  ║║ ╠═╣  ║  ║╣\e[0m\n"
printf "\e[97m╚═╝ ╩   ═╩╝ ╩ ╩  ╩  ╚═╝ \e[0m\n"
cd $HOME 
cdrm -rf Fb_CrakPrem
git clone https://github.com/Unlimited-Crack-You/Fb_CrakPrem
cd Fb_CrakPrem
sleep 1
clear
echo ""
printf " \e[0m\e[1;93mUPDATE SELESAI AKAN MENCOBA MASUK KEMBALI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 2
bash install.sh
clear

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
update
fi
}

install_bahan
