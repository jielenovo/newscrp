#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="jielenovo"
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script

}
clear
# PROVIDED
creditt=$(cat /root/provided)
# BANNER COLOUR
banner_colour=$(cat /etc/banner)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR ON TOP
text=$(cat /etc/text)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TOTAL ACC CREATE VMESS WS
total1=$(grep -c -E "^#vms " "/usr/local/etc/xray/config.json")
# TOTAL ACC CREATE  VLESS WS
total2=$(grep -c -E "^#vls " "/etc/xray/config.json")
# TOTAL ACC CREATE  VLESS TCP XTLS
total3=$(grep -c -E "^#vxtls " "/usr/local/etc/xray/config.json")
MYIP=$(wget -qO- ifconfig.me/ip);
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi

# ADD USER VLESS WS
function menu7 () {
clear
tls="$(cat ~/log-install.txt | grep -w "Vless Ws Tls" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless Ws None Tls" | cut -d: -f2|sed 's/ //g')"
echo -e   "  \e[$line═══════════════════════════════════════════════════════\e[m"
echo -e   "  \e[$back_text           \e[30m[\e[$box BUAT USER VLESS WS TRICK\e[30m ]\e[1m           \e[m"
echo -e   "  \e[$line═══════════════════════════════════════════════════════\e[m"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
		read -rp "   Username: " -e user
		CLIENT_EXISTS=$(grep -w $user /usr/local/etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
patchtls=/xray-vlessws-tls
patchnontls=/xray-vlessws-none-tls
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "   Bug Address (Example: www.google.com) : " address
read -p "   Bug SNI/Host (Example : m.facebook.com) : " sni
read -p "   Expired (days) : " masaaktif
bug_addr=${address}.
bug_addr2=$address
if [[ $address == "" ]]; then
sts=$bug_addr2
else
sts=$bug_addr
fi
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
harini=`date -d "0 days" +"%Y-%m-%d"`
sed -i '/#xray-vless-tls$/a\#vls '"$user $exp $harini $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/config.json
sed -i '/#xray-vless-nontls$/a\#vls '"$user $exp $harini $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/none.json
vlesslink1="vless://${uuid}@italeem.iium.edu.my:443?security=tls&encryption=none&type=ws&headerType=none&path=wss://italeem.iium.edu.my/xray-vlessws-tls&sni=italeem.iium.edu.my&host=${domain}#${user}"
vlesslink2="vless://${uuid}@www.ukm.my.${domain}:8080?security=none&encryption=none&type=ws&headerType=none&path=/xray-vlessws-none-tls&host=app.maxis.com.my#${user}"
vlesslink3="vless://${uuid}@onlinepayment.celcom.com.my:443?security=tls&encryption=none&type=ws&headerType=none&path=wss://onlinepayment.celcom.com.my/xray-vlessws-tls&sni=onlinepayment.celcom.com.my&host=${domain}#${user}"
vlesslink4="vless://${uuid}@tv.iqiyi.site:8080?security=none&encryption=none&type=ws&headerType=none&path=/xray-vlessws-none-tls&host=${domain}#${user}"
vlesslink5="vless://${uuid}@m.pokemon.com.${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&sni=m.pokemon.com&host=m.pokemon.com#${user}"
vlesslink6="vless://${uuid}@cdn.who.int:8080?security=none&encryption=none&type=ws&headerType=none&path=wss://cdn.who.int/xray-vlessws-none-tls&host=${domain}#${user}"
vlesslink7="vless://${uuid}@${sts}${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&host=pay-dcb.u.com.my#${user}"
vlesslink8="vless://${uuid}@esports.pubgmobile.com.${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&sni=esports.pubgmobile.com&host=esports.pubgmobile.com#${user}"
systemctl restart xray
systemctl restart xray@none
clear
echo -e ""
echo -e "\e[$line═════════[VLESS WS TRICK]═════════\e[m"
echo -e "Remarks          : ${user}"
echo -e "Created          : $harini"
echo -e "Expired           : $exp"
echo -e "Domain           : ${domain}"
echo -e "IP/Host          : $MYIP"
echo -e "Port TLS         : $tls"
echo -e "Port None TLS    : $none"
echo -e "User ID          : ${uuid}"
echo -e "Encryption       : None"
echo -e "Network          : WebSocket"
echo -e "Path Tls         : $patchtls"
echo -e "Path None Tls    : $patchnontls"
echo -e "AllowInsecure    : True/Allow"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Pantang Larang $creditt Shop"
echo -e "‼️Aktiviti Berikut Adalah Dilarang(ID akan di ban tanpa notis & tiada refund)"
echo -e "\e[31m❌ Torrent (p2p, streaming p2p)"
echo -e "\e[31m❌ PS4"
echo -e "\e[31m❌ Porn"
echo -e "\e[31m❌ Spam Bug"
echo -e "\e[31m❌ Ddos Server"
echo -e "\e[31m❌ Mining Bitcoins"
echo -e "\e[31m❌ Abuse Usage"
echo -e "\e[31m❌ Multi-Login ID"
echo -e "\e[31m❌ Sharing Premium Config\e[m"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link MAXIS         : ${vlesslink1}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link MAXIS HUNT IP      : ${vlesslink2}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link CELCOM            : ${vlesslink3}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link DIGI BOOSTER        : ${vlesslink4}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link DIGI POKEMON        : ${vlesslink5}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link YESS                 : ${vlesslink6}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link UMOBILE      : ${vlesslink7}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link YOODO GAME    : ${vlesslink8}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Created   : $harini"
echo -e "Expired   : $exp"
echo -e "Script By $creditt"
}
# TRIAL USER VLESS WS
function menu8 () {
clear
tls="$(cat ~/log-install.txt | grep -w "Vless Ws Tls" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless Ws None Tls" | cut -d: -f2|sed 's/ //g')"
echo -e   "  \e[$line═══════════════════════════════════════════════════════\e[m"
echo -e   "  \e[$back_text           \e[30m[\e[$box TRIAL USER XRAY VLESS WS TLS\e[30m ]\e[1m            \e[m"
echo -e   "  \e[$line═══════════════════════════════════════════════════════\e[m"
# Create Expried 
masaaktif="1"
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")

# Make Random Username 
user=Trial`</dev/urandom tr -dc X-Z0-9 | head -c4`

patchtls=/xray-vlessws-tls
patchnontls=/xray-vlessws-none-tls
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "   Bug Address (Example: www.google.com) : " address
read -p "   Bug SNI/Host (Example : m.facebook.com) : " sni
bug_addr=${address}.
bug_addr2=$address
if [[ $address == "" ]]; then
sts=$bug_addr2
else
sts=$bug_addr
fi
harini=`date -d "0 days" +"%Y-%m-%d"`
sed -i '/#xray-vless-tls$/a\#vls '"$user $exp $harini $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/config.json
sed -i '/#xray-vless-nontls$/a\#vls '"$user $exp $harini $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/none.json
vlesslink1="vless://${uuid}@italeem.iium.edu.my:443?security=tls&encryption=none&type=ws&headerType=none&path=wss://italeem.iium.edu.my/xray-vlessws-tls&sni=italeem.iium.edu.my&host=${domain}#${user}"
vlesslink2="vless://${uuid}@www.ukm.my.${domain}:8080?security=none&encryption=none&type=ws&headerType=none&path=/xray-vlessws-none-tls&host=app.maxis.com.my#${user}"
vlesslink3="vless://${uuid}@onlinepayment.celcom.com.my:443?security=tls&encryption=none&type=ws&headerType=none&path=wss://onlinepayment.celcom.com.my/xray-vlessws-tls&sni=onlinepayment.celcom.com.my&host=${domain}#${user}"
vlesslink4="vless://${uuid}@tv.iqiyi.site:8080?security=none&encryption=none&type=ws&headerType=none&path=/xray-vlessws-none-tls&host=${domain}#${user}"
vlesslink5="vless://${uuid}@m.pokemon.com.${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&sni=m.pokemon.com&host=m.pokemon.com#${user}"
vlesslink6="vless://${uuid}@cdn.who.int:8080?security=none&encryption=none&type=ws&headerType=none&path=wss://cdn.who.int/xray-vlessws-none-tls&host=${domain}#${user}"
vlesslink7="vless://${uuid}@${sts}${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&host=pay-dcb.u.com.my#${user}"
vlesslink8="vless://${uuid}@esports.pubgmobile.com.${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&sni=esports.pubgmobile.com&host=esports.pubgmobile.com#${user}"
systemctl restart xray
systemctl restart xray@none
clear
echo -e ""
echo -e "\e[$line══════[TRIAL XRAY VLESS WS]══════\e[m"
echo -e "Remarks          : ${user}"
echo -e "Created           : $harini"
echo -e "Expired            : $exp"
echo -e "Domain           : ${domain}"
echo -e "IP/Host          : $MYIP"
echo -e "Port TLS         : $tls"
echo -e "Port None TLS    : $none"
echo -e "User ID          : ${uuid}"
echo -e "Encryption       : None"
echo -e "Network          : WebSocket"
echo -e "Path Tls         : $patchtls"
echo -e "Path None Tls    : $patchnontls"
echo -e "AllowInsecure    : True/Allow"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Pantang Larang $creditt Shop"
echo -e "‼️Aktiviti Berikut Adalah Dilarang(ID akan di ban tanpa notis & tiada refund)"
echo -e "\e[31m❌ Torrent (p2p, streaming p2p)"
echo -e "\e[31m❌ PS4"
echo -e "\e[31m❌ Porn"
echo -e "\e[31m❌ Spam Bug"
echo -e "\e[31m❌ Ddos Server"
echo -e "\e[31m❌ Mining Bitcoins"
echo -e "\e[31m❌ Abuse Usage"
echo -e "\e[31m❌ Multi-Login ID"
echo -e "\e[31m❌ Sharing Premium Config\e[m"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link MAXIS         : ${vlesslink1}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link MAXIS HUNT IP      : ${vlesslink2}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link CELCOM            : ${vlesslink3}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link DIGI BOOSTER        : ${vlesslink4}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link DIGI POKEMON        : ${vlesslink5}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link YESS                 : ${vlesslink6}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link UMOBILE      : ${vlesslink7}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link YOODO GAME    : ${vlesslink8}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Created   : $harini"
echo -e "Expired   : $exp"
echo -e "Script By $creditt"
}
# DELETE USER VLESS WS
function menu9 () {
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#vls " "/usr/local/etc/xray/config.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo " Delete User Xray Vless Ws"
	echo " Select the existing client you want to remove"
	echo " Press CTRL+C to return"
	echo " ==============================="
	echo "     No  Expired   User"
	grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
harini=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
uuid=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 5 | sed -n "${CLIENT_NUMBER}"p)
user=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^#vls $user $exp $harini $uuid/,/^},{/d" /usr/local/etc/xray/config.json
sed -i "/^#vls $user $exp $harini $uuid/,/^},{/d" /usr/local/etc/xray/none.json
systemctl restart xray
systemctl restart xray@none
clear
echo " Xray Vless Ws Account Deleted Successfully"
echo " =========================="
echo " Client Name : $user"
echo " Expired On  : $exp"
echo " =========================="
}
#RENEW VLESS WS
function menu10 () {
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#vls " "/usr/local/etc/xray/config.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo "Renew User Xray Vless Ws"
	echo "Select the existing client you want to renew"
	echo " Press CTRL+C to return"
	echo -e "==============================="
	grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
read -p "Expired (days): " masaaktif
harini=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
uuid=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 5 | sed -n "${CLIENT_NUMBER}"p)
user=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
exp3=$(($exp2 + $masaaktif))
exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
sed -i "s/#vls $user $exp $harini $uuid/#vls $user $exp4 $harini $uuid/g" /usr/local/etc/xray/config.json
sed -i "s/#vls $user $exp $harini $uuid/#vls $user $exp4 $harini $uuid/g" /usr/local/etc/xray/none.json
service cron restart
clear
echo ""
echo " VLESS WS Account Was Successfully Renewed"
echo " =========================="
echo " Client Name : $user"
echo " Expired On  : $exp4"
echo " =========================="
}
# show user vless ws
function menu11 () {
clear
tls="$(cat ~/log-install.txt | grep -w "Vless Ws Tls" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless Ws None Tls" | cut -d: -f2|sed 's/ //g')"
NUMBER_OF_CLIENTS=$(grep -c -E "^#vls " "/usr/local/etc/xray/config.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo "SHOW USER XRAY VLESS WS"
	echo "Select the existing client you want to renew"
	echo " Press CTRL+C to return"
	echo -e "==============================="
	grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
patchtls=/xray-vlessws-tls
patchnontls=/xray-vlessws-none-tls
user=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
harini=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
uuid=$(grep -E "^#vls " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 5 | sed -n "${CLIENT_NUMBER}"p)
vlesslink1="vless://${uuid}@italeem.iium.edu.my:443?security=tls&encryption=none&type=ws&headerType=none&path=wss://italeem.iium.edu.my/xray-vlessws-tls&sni=italeem.iium.edu.my&host=${domain}#${user}"
vlesslink2="vless://${uuid}@www.ukm.my.${domain}:8080?security=none&encryption=none&type=ws&headerType=none&path=/xray-vlessws-none-tls&host=app.maxis.com.my#${user}"
vlesslink3="vless://${uuid}@onlinepayment.celcom.com.my:443?security=tls&encryption=none&type=ws&headerType=none&path=wss://onlinepayment.celcom.com.my/xray-vlessws-tls&sni=onlinepayment.celcom.com.my&host=${domain}#${user}"
vlesslink4="vless://${uuid}@tv.iqiyi.site:8080?security=none&encryption=none&type=ws&headerType=none&path=/xray-vlessws-none-tls&host=${domain}#${user}"
vlesslink5="vless://${uuid}@m.pokemon.com.${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&sni=m.pokemon.com&host=m.pokemon.com#${user}"
vlesslink6="vless://${uuid}@cdn.who.int:8080?security=none&encryption=none&type=ws&headerType=none&path=wss://cdn.who.int/xray-vlessws-none-tls&host=${domain}#${user}"
vlesslink7="vless://${uuid}@${sts}${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&host=pay-dcb.u.com.my#${user}"
vlesslink8="vless://${uuid}@esports.pubgmobile.com.${domain}:443?security=tls&encryption=none&type=ws&headerType=none&path=/xray-vlessws-tls&sni=esports.pubgmobile.com&host=esports.pubgmobile.com#${user}"
clear
echo -e ""
echo -e "\e[$line═════════[XRAY VLESS WS]═════════\e[m"
echo -e "Remarks          : ${user}"
echo -e "Created          : $harini"
echo -e "Expired           : $exp"
echo -e "Domain           : ${domain}"
echo -e "IP/Host          : $MYIP"
echo -e "Port TLS         : $tls"
echo -e "Port None TLS    : $none"
echo -e "User ID          : ${uuid}"
echo -e "Encryption       : None"
echo -e "Network          : WebSocket"
echo -e "Path Tls         : $patchtls"
echo -e "Path None Tls    : $patchnontls"
echo -e "AllowInsecure    : True/Allow"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Pantang Larang $creditt Shop"
echo -e "‼️Aktiviti Berikut Adalah Dilarang(ID akan di ban tanpa notis & tiada refund)"
echo -e "\e[31m❌ Torrent (p2p, streaming p2p)"
echo -e "\e[31m❌ PS4"
echo -e "\e[31m❌ Porn"
echo -e "\e[31m❌ Spam Bug"
echo -e "\e[31m❌ Ddos Server"
echo -e "\e[31m❌ Mining Bitcoins"
echo -e "\e[31m❌ Abuse Usage"
echo -e "\e[31m❌ Multi-Login ID"
echo -e "\e[31m❌ Sharing Premium Config\e[m"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link MAXIS         : ${vlesslink1}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link MAXIS HUNT IP      : ${vlesslink2}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link CELCOM            : ${vlesslink3}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link DIGI BOOSTER        : ${vlesslink4}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link DIGI POKEMON        : ${vlesslink5}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link YESS                 : ${vlesslink6}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link UMOBILE      : ${vlesslink7}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Link YOODO GAME    : ${vlesslink8}"
echo -e "\e[$line═════════════════════════════════\e[m"
echo -e "Created   : $harini"
echo -e "Expired   : $exp"
echo -e "Script By $creditt"
}
# USER LOGIN VLESS WS
function menu12 () {
clear
echo -n > /tmp/other.txt
data=( `cat /usr/local/etc/xray/config.json | grep '^#vls' | cut -d ' ' -f 2`);
echo "-----------------------------------------";
echo "------=[ Xray Vless Ws User Login ]=-----";
echo "-----------------------------------------";
for akun in "${data[@]}"
do
if [[ -z "$akun" ]]; then
akun="tidakada"
fi
echo -n > /tmp/ipvless.txt
data2=( `netstat -anp | grep ESTABLISHED | grep tcp6 | grep xray | awk '{print $5}' | cut -d: -f1 | sort | uniq`);
for ip in "${data2[@]}"
do
jum=$(cat /var/log/xray/access.log | grep -w $akun | awk '{print $3}' | cut -d: -f1 | grep -w $ip | sort | uniq)
if [[ "$jum" = "$ip" ]]; then
echo "$jum" >> /tmp/ipvless.txt
else
echo "$ip" >> /tmp/other.txt
fi
jum2=$(cat /tmp/ipvless.txt)
sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
done
jum=$(cat /tmp/ipvless.txt)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
jum2=$(cat /tmp/ipvless.txt | nl)
echo "user : $akun";
echo "$jum2";
echo ""
echo "-------------------------------"
fi
rm -rf /tmp/ipvmess.txt
done
}
# MENU XRAY VMESS & VLESS
clear
echo -e ""
echo -e "   \033[4;31m══════════════════════════════════════════\033[0m"
figlet VlessWss | lolcat
echo -e "   \033[4;31m══════════════════════════════════════════\033[0m"
echo -e "   \e[$back_text  \e[$box   MENU VLESS WS ALL TRICK               \e[m"
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "    \e[$number (•1)\e[m \e[$below Create Vless Websocket Account\e[m"
echo -e "    \e[$number (•2)\e[m \e[$below Trial User Vless Websocket\e[m"
echo -e "    \e[$number (•3)\e[m \e[$below Deleting Vless Websocket Account\e[m"
echo -e "    \e[$number (•4)\e[m \e[$below Renew Vless Websocket Account\e[m"
echo -e "    \e[$number (•5)\e[m \e[$below Show Config Vless Account\e[m"
echo -e "    \e[$number (•6)\e[m \e[$below Check User Login Vless\e[m"
echo -e ""
echo -e "   \e[$number    >> Total :\e[m \e[$below ${total2} Client\e[m"
echo -e ""
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "   \e[$back_text  \e[$box x)   MENU                              \e[m"
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "        Please Input Number  [1-6 or x] :  "  num
echo -e ""
if [[ "$num" = "1" ]]; then
menu7
elif [[ "$num" = "2" ]]; then
menu8
elif [[ "$num" = "3" ]]; then
menu9
elif [[ "$num" = "4" ]]; then
menu10
elif [[ "$num" = "5" ]]; then
menu11
elif [[ "$num" = "6" ]]; then
menu12
elif [[ "$num" = "x" ]]; then
menu
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
xraay
fi
