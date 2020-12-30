#!/bin/bash


#Unpack Repack Boot.img By M24-XT 
#binary by NamakuHendra : https://github.com/NamakuHendra/mkbootimg-unpackbootimg_android
#Thanks !
#v1.0-3
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
bck(){
	main
}
unpck(){
	sleep 1
	clear
	echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	sleep 0.1
	figlet UNPACK | lolcat
	sleep 0.1
	echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	echo ""
	echo ""
	echo $W
	read -p "Nama Boot Img : " img
	mkdir unpack
	./unpackbootimg -i $img -o unpack
	echo $G [+] Sukses Unpack ! 
	sleep 1
	bck
}
repck(){
	sleep 1                                                         clear                                                           echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                                  
	sleep 0.1                                                       figlet Repack | lolcat                                          sleep 0.1                                                       echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                                  
	echo ""             
	echo ""               
	echo $W
	read -p "Repack From 'unpack folder'(Y/n)?" ask
	

}
main(){
	sleep 1
	clear
	sleep 0.1
	sleep 0.5                                                       echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                                                      
	sleep 0.1
	figlet MAIN MENU | lolcat
	sleep 0.1
	echo $Y 
        echo $W ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
	echo $G "v1.0-3"
	echo ""
	echo $G " 1 > Unpack Boot.img		2 > Repack Boot.img (Update selanjutnya) "
	sleep 0.1
	echo ""
	echo $G " 00 > Keluar "
	echo ""
	echo ""
	echo $W
	read -p "> " pil
	if [ pil==1 ];then
		unpck
	elif [ pil==2 ];then
		repck
	elif [ pil==00 ];then
		out
	else
		echo $R [!] Pilihan Invalid 
	fi
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


