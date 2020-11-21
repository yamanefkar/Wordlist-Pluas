#!/bin/bash


start(){
	clear
	echo -e "\e[33m▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄  \e[31mCode: \e[37mRufat.jabrail \n\e[33m▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄  \e[31mİnstagram: \e[37mrufat.jabrail\n\e[33m▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄  \e[31mYoutube: \e[37mOD_Gamers\n\e[33m▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄  \e[31mGitHub: \e[37mOD_Gamers\n\e[33m▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄  Tool Name: Wordlist-Pluas\n\n\n"





	rm -rf wordlist.txt	
	cd Lib/ && rm -rf kayit.php
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAdı : ' adi
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSoyadı : ' soyad
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mDoğum Gunu : ' dogumtarih
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mDoğum Yılı : ' dogumyilii
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mLakabı : ' lakapi
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mAnne Adı : ' annei
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mBaba Adı : ' babai
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mKardeş Adı : ' kardesi
	sleep 1
	clear	
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSevgilisinin Adı : ' sevgilii
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mÇıkma Tarihleri : ' sevtarih
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mÇıkma Yılı : ' sevyil
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mŞehir : ' sehiri
	sleep 1
	clear
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mPlaka : ' plaka
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mTelefon numarasinin son 4 rakamı : ' takimi
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mTelefon numarasının son 2 rakamı : ' kisatakim
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mŞuanki yıl : ' takimyil
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mTelefon Numarası : ' numara
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mEski Şifresi : ' eskisifrei

	
	echo "
	<?php
	\$ad = '$adi';
	\$soyadad = '$soyad';
	\$lakap = '$lakapi';
	\$anne = '$annei';
	\$baba = '$babai';
	\$kardes = '$kardesi';
	\$sevgili = '$sevgilii';
	\$dogumtarihi = '$dogumtarih';
	\$dogumyili = '$dogumyilii';
	\$cikmayili = '$sevyil';
	\$cikmatarihi = '$sevtarih';
	\$sehir = '$sehiri';
	\$takim = '$takimi';
	\$takimtarihi = '$takimyil';
	\$takimkisa = '$kisatakim';
	\$plaka = '$plaka';
	\$eskisifre = '$eskisifrei';
	\$tel = '$numara';?>" >> kayit.php 

	php olanak-list.php
	php ad-list.php
	php anne-list.php
	php annetel-list.php	
	php baba-list.php
	php babatel-list.php
	php cikmatarihi-list.php
	php cikmayili-list.php
	php dogumyili-list.php
	php eskisifre-list.php
	php kardes-list.php
	php kardestel-list.php
	php lakap-list.php
	php plaka-list.php
	php sehir-list.php
	php sevgili-list.php
	php soyad-list.php
	php takim-list.php
	php takimkisa-list.php
	php takimtarihi-list.php
	php tel-list.php

	echo -e '\e[32mDosyanız Hazır : \e[37mwordlist.txt'




}



if [[ -e "Lib/ok.txt" ]]; then

	if [[ -e "wordlist.txt" ]]; then
		clear
		read -p $'\e[31m[\e[32m!\e[31m]\e[37mDaha önce oluşturduğunuz bir wordlist mevcut!\nYeni bir wordlist oluşturmak ister misiniz? [E,H] : ' yeni
		if [[ $yeni == "E" || $yeni == "e" ]]; then					
			start
		elif [[ $yeni == "H" || $yeni == "h" ]]; then
			clear
			echo -e "Hayır 'ı seçtiniz.Eski Wordlist kullanılmaya devam edicek."
		else
			clear
			echo -e "Lütfen (E ,'Evet')  (H ,'Hayır') seçeneklerinden birini seçiniz! "
			sleep 3
			bash tst.sh	
		fi
	else
		start	
	fi
else 
apt install php -y 
clear
cd Lib/
echo "Bu Tool OD_Gamers Tarafından Kodlandı...." >> ok.txt
cd ..
bash tst.sh	
fi
