#!/bin/bash

GitUser="JebonRX"
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
MYIP=$(curl -s ipinfo.io/ip )
MYIP=$(curl -sS ipv4.icanhazip.com)
MYIP=$(curl -sS ifconfig.me )
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text             \e[30m═[\e[$box SYSTEM MENU\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[$below Add New Subdomain\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Renew Cert Xray Core\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below Panel Domain\e[m"
echo -e "   \e[$number (•4)\e[m \e[$below Backup Vps\e[m"
echo -e "   \e[$number (•5)\e[m \e[$below Restore Vps\e[m"
echo -e "   \e[$number (•6)\e[m \e[$below Install Webmin\e[m"
echo -e "   \e[$number (•7)\e[m \e[$below Setup Speed VPS\e[m"
echo -e "   \e[$number (•8)\e[m \e[$below Restart VPN\e[m"
echo -e "   \e[$number (•9)\e[m \e[$below Speedtest VPS\e[m"
echo -e "   \e[$number (10)\e[m \e[$below Install BBR\e[m"
echo -e "   \e[$number (11)\e[m \e[$below ON/OF Auto Reboot\e[m"
echo -e "   \e[$number (12)\e[m \e[$below Change Password VPS\e[m"
echo -e ""
echo -e "   \e[$number (99)\e[m \e[$below Update menu VPS\e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x)   MENU                             \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "        Please Input Number  [1-99 or x] :  "  sys
echo -e ""
case $sys in
1)
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill;add-host
;;
2)
certv2ray
;;
3)
panel-domain
;;
4)
backup
;;
5)
restore
;;
6)
wbmn
;;
7)
limit-speed
;;
8)
restart
;;
9)
speedtest
;;
10)
bbr
;;
11)
autoreboot
;;
12)
passwd
;;
99)
wget -q -O /usr/bin/updatemenu "https://raw.githubusercontent.com/JebonRX/V2Remake/main/update/updatemenu.sh" && chmod +x /usr/bin/updatemenu && updatemenu
;;
x)
menu
;;
*)
echo "Please enter an correct number"
sleep 1
system
;;
esac
