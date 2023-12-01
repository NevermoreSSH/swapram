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
echo -e " \E[0;47;30m                 SWAP RAM                   \E[0m"
echo -e "\e[36m╘════════════════════════════════════════════╛\033[0m
\033[1;37mSwapRAM By NevermoreSSH\033[0m
\033[1;37mTelegram : https://t.me/todfix667 \033[0m"
echo -e ""
echo -e "
 [\033[1;36m•1\033[0m]  Add 512MB RAM
 [\033[1;36m•2\033[0m]  Add 1GB RAM
 [\033[1;36m•3\033[0m]  Add 2GB RAM
 [\033[1;36m•4\033[0m]  Add 4GB RAM
 [\033[1;36m•5\033[0m]  Disable Swap RAM
 
 [\033[1;36m•0\033[0m]  Back to menu
 
Notes: 
 - Please disable SwapRAM first before you choose other SwapRAM partition.
 - SwapRAM only used when RAM is used up."
echo ""
echo -e "\033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
read -p "Select From Options [ 1 - 5 ] :  " swap1
echo -e ""
case $swap1 in
1)
clear
echo -e "[ ${green}INFO${NC} ] Processing . . . "
dd if=/dev/zero of=/swapfile bs=1024 count=524288
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
echo ""
echo -e "[ ${green}INFO${NC} ] Back to menu . . . "
sleep 2
swapram
;;
2)
clear
echo -e "[ ${green}INFO${NC} ] Processing . . . "
dd if=/dev/zero of=/swapfile bs=1024 count=1048576
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
echo ""
echo -e "[ ${green}INFO${NC} ] Back to menu . . . "
sleep 2
swapram
;;
3)
clear
echo -e "[ ${green}INFO${NC} ] Processing . . . "
dd if=/dev/zero of=/swapfile bs=1024 count=2097152
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
echo ""
echo -e "[ ${green}INFO${NC} ] Back to menu . . . "
sleep 2
swapram
;;
4)
clear
echo -e "[ ${green}INFO${NC} ] Processing . . . "
dd if=/dev/zero of=/swapfile bs=1024 count=4194304
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
echo ""
echo -e "[ ${green}INFO${NC} ] Back to menu . . . "
sleep 2
swapram
;;
5)
clear
swapoff --all
echo -e "[ ${green}INFO${NC} ] Disable Swap RAM . . . "
echo ""
sleep 4
echo -e "[ ${green}INFO${NC} ] Done . . . "
sleep 3
echo ""
echo -e "[ ${green}INFO${NC} ] Back to menu . . . "
sleep 2
swapram
;;
0)
clear
menu
;;
*)
clear
echo -e "[ ${red}INFO${NC} ] Please enter an correct number . . . "
sleep 3
swapram
;;
esac
