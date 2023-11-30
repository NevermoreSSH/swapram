#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : NevermoreSSH
# (C) Copyright 2022
# =========================================
P='\e[0;35m'
B='\033[0;36m'
G='\033[0;32m'
NC='\e[0m'
N='\e[0m'
clear
echo -e "\e[36m╒════════════════════════════════════════════╕\033[0m"
echo -e " \E[0;47;30m                 SWAP RAM                \E[0m"
echo -e "\e[36m╘════════════════════════════════════════════╛\033[0m
\033[1;37mDNS Changer By NevermoreSSH\033[0m
\033[1;37mTelegram : https://t.me/todfix667 \033[0m"
echo -e ""
echo -e "
 [\033[1;36m•1 \033[0m]  Add 512MB RAM
 [\033[1;36m•2 \033[0m]  Add 1GB RAM
 [\033[1;36m•3 \033[0m]  Add 2GB RAM
 [\033[1;36m•4 \033[0m]  Add 4GB RAM
 [\033[1;36m•5 \033[0m]  Disable Swap RAM
 
Notes: 
 - Please disable swap RAM first before you choose other swap RAM partition.
 - Swap only used when RAM is used up.
echo ""
echo -e "\033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
read -p "Select From Options [ 1 - 5 ] :  " swap1
echo -e ""
case $swap1 in
1)
clear
dd if=/dev/zero of=/swapfile bs=512 count=1024k
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
sleep 1
swapram
;;
2)
clear
dd if=/dev/zero of=/swapfile bs=1024 count=1024k
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
sleep 1
swapram
;;
3)
clear
dd if=/dev/zero of=/swapfile bs=1024 count=2048k
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
sleep 1
swapram
;;
4)
clear
dd if=/dev/zero of=/swapfile bs=2048 count=2048k
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
sleep 1
swapram
;;
5)
clear
swapoff --all
sleep 1
swapram
;;
0)
clear
menu
;;
*)
clear
echo -e "[ ${red}INFO${NC} ] Please enter an correct number . . . "
#echo -e "\e[1;31m Please enter an correct number\e[1;31m"
sleep 3
xraychanger
;;
esac
