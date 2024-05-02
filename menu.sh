#!/bin/bash

clear

if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "It looks like you are not running this installer on Debian, Ubuntu or Centos system"
	exit
fi
color3='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipv4.icanhazip.com )
clear
echo -e "\033[0;32m┌───────────────────────────────────────────────────────────┐${NC}"
figlet -f slant "ENVY TEAM" | lolcat
echo -e "\033[0;32m└───────────────────────────────────────────────────────────┘${NC}"

echo -e "\033[0;32m┌───────────────────────────────────────────────────────────┐${NC}"
echo -e ""

figlet -f slant "ENVY MENU" | lolcat                                                                                                   

echo -e "\033[0;32m└───────────────────────────────────────────────────────────┘${NC}"

echo -e "\033[0;32m┌───────────────────────────────────────────────────────────┐${NC}"

echo -e " [\e[36m•1\e[0m] MENU SSH & OVPN"   "        [\e[36m•12\e[0m] MENU WEBMIN"

echo -e " [\e[36m•2\e[0m] MENU WIREGUARD"    "         [\e[36m•13\e[0m] USAGE RAM VPS"

echo -e " [\e[36m•3\e[0m] MENU L2TP & PPTP"  "       [\e[36m•14\e[0m] REBOOT VPS "

echo -e " [\e[36m•4\e[0m] MENU SSTP"         "              [\e[36m•15\e[0m] SPEEDTEST"

echo -e " [\e[36m•5\e[0m] MENU SSR & SHADOWSOCKS"  " [\e[36m•16\e[0m] DISPLAY SYSTEM"

echo -e " [\e[36m•6\e[0m] MENU VMESS/V2RAY"  "       [\e[36m•17\e[0m] INFO SCRIPT"

echo -e " [\e[36m•7\e[0m] MENU VLESS"        "             [\e[36m•18\e[0m] RESTART ALL SERVICE"

echo -e " [\e[36m•8\e[0m] MENU TROJAN"       "            [\e[36m•19\e[0m] MULTILOGIN"

echo -e " [\e[36m•9\e[0m] ADD SUBDOMAIN"     "          [\e[36m•20\e[0m] INSTALL BBR"

echo -e " [\e[36m•10\e[0m] NEW CERT V2RAY"   "        [\e[36m•21\e[0m] ADD ID CLOUDFLARE"

echo -e " [\e[36m•11\e[0m] CHANGE ALL PORT"  "       [\e[36m•22\e[0m] SYSTEM RUNNING"

echo -e ""

echo -e " x.   Exit From Putty / JuiceSSH / Termux"

echo -e "\033[0;32m└───────────────────────────────────────────────────────────┘${NC}"

echo -e ""

read -p "     Please Input Number  [1-22 or x] :  "  num

echo -e ""

case $num in

1)

tessh

2)

wgg                                                                                                                                    
;;

3)

ltp

;;

4)

ssstp

;;

5)

sssr

;;

6)

wss

;;

7)

vls

;;

8)

trj

;;

9)

add-host

;;

10)

certv2ray

;;

11)

change-port

;;

12)

wbmn

;;

13)

ram

;;

14)

reboot

;;

15)

speedtest

;;

16)

info

;;

17)

about

;;

18)

restart

;;

19)

autokill

;;

20)

bbr

;;

21)

cff

;;

22)

running

;;

x)

exit

;;

*)

echo "Please enter an correct number"

;;

esac
