#!/bin/bash


#Unpack Repack Boot.img By M24-XT 
#binary by NamakuHendra : https://github.com/NamakuHendra/mkbootimg-unpackbootimg_android
#Thanks !
#v1.0-1
#Warna
W='\033[1;37m'
B='\033[1;34m'
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
binary=`pwd`
xz=`ls $binary | grep 'img'`
os=`echo $OSTYPE` 
#Binary variable gk digunain awikwok
#fun
out(){
	clear 
	sleep 1.5
	echo $Y ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.1
	echo ""
	echo $Y Made BY M24-XT
	echo ""
	sleep 0.1
	echo $Y ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 1.5
	clear
	sleep 0.5
	exit 
} 
bck(){
	main
}
unpck(){
	sleep 1
	clear
	echo $Y ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.1	
	figlet UNPACK 
	sleep 0.1
	echo $Y ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	echo ""
	echo ""
	echo $Y
	read -p "Nama Boot Img : " img
	mkdir unpack
	./unpackbootimg -i $img -o unpack
	echo $G [+] Sukses Unpack ! 
	sleep 1
	bck
}
repck(){
	sleep 1
	clear
	echo $Y ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.1
	figlet REPACK
	echo $Y ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	echo ""             
	echo ""               
	echo $R COMING SOON ! 
	sleep 2
	bck 
	

}
main(){
	sleep 1
	clear
	sleep 0.5
	echo $Y {}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{} 
	sleep 0.1
	echo ""
	figlet MAIN MENU 
	echo ""
	echo $Y {}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{} 
	sleep 0.1
	echo ""
	echo $G "v1.2-0-Stable No Repack"
	echo ""
	echo $G " 1 > Unpack Boot.img		2 > Repack Boot"
	sleep 0.1
	echo ""
	echo $G " 00 > Keluar "
	echo ""
	echo ""
	echo $W
	read -p "> " pil
	case "$pil" in
		1) unpck;;
		2) repck;;
		00) out;;
		*) echo $R Pilihan Invalid 
			main;; 
	esac
}
pkgsetup(){
	sleep 1
	clear
	sleep 0.5
	echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.1
	echo $Y [*] Ini Adalah Package Setup, Sabar....
	sleep 0.1
	echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	echo $Y Memulai Setup......
	sleep 1.5
	clear
	apt-get update -y&&apt-get upgrade -y
	apt-get install ruby -y
	apt-get install figlet -y
	gem install lolcat
	sleep 0.5
	clear
	sleep 0.5                                                       echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 
	sleep 0.1
	echo $G [✓] Setup Selesai ! 
	sleep 0.1
        echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.5
	main 
}
chck_pkg(){
if [ -f $pkg_dir/git ];then
	if [ -f $pkg_dir/lolcat ];then
		if [ -f $pkg_dir/figlet ];then
			clear
			sleep 1
			echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
			sleep 0.1
			echo $G "[+] Git,Figlet dan lolcat telah diinstall"
			sleep 0.1
			echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
			sleep 1
			main
		else
			pkgsetup
		fi
	fi
fi
}
if [ $os==linux-android ];then
	pkg_dir=/data/data/com.termux/files/usr/bim
	chck_pkg
elif [ $os==linux-gnu ];then
	pkg_dir=/usr/bin
	chck_pkg
else
	echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.1
	echo $R [-] Unknown OS 
	sleep 0.1
	echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━{
	sleep 
	clear
fi
main

