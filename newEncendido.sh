#!/bin/bash
#--------------------------------------------------#
#--- Script para el encendido de las salas---------#
#--- Autor: Cristian Berrio------------------------#
#--- Universidad de Antioquia----------------------#
#--- Este script fue realizado para el ------------#
#--- Laboratorio Integrado de Sistemas ------------#
#--------------------------------------------------#
clear
wid=$(zenity --password --title="Ingreso de password")
openPass='monitor_lis'
if [ $wid = $openPass ]; then
  zenity --info --text "¡¡¡¡Recuerde que debe estar en un pc de la sala que quiere encender!!!!"
  sala=$(zenity  --list  --text "Seleccione el numero de sala que quiere encender" --radiolist  --column " " --column "Sala" FALSE "1" FALSE "2" FALSE "3" FALSE "4");

  case $sala in
    1)
    wakeonlan '00:25:11:89:99:2c' #1
    wakeonlan '00:25:11:8b:da:7c' #2
    wakeonlan '00:25:11:61:d6:15' #3
    wakeonlan '00:25:11:60:1f:10' #4
    wakeonlan '44:8a:5b:56:56:c7' #5
    wakeonlan '44:8a:5b:56:ac:0f' #6
    wakeonlan '44:8a:5b:56:60:e8' #7
    wakeonlan '44:8a:5b:56:ac:1a' #8
    wakeonlan '44:8a:5b:56:ac:1c' #9
    wakeonlan '44:8a:5b:56:58:4b' #10
    wakeonlan '44:8a:5b:56:60:e7' #11
    wakeonlan '44:8a:5b:56:b6:ee' #12
    wakeonlan '44:8a:5b:56:ac:17' #13
    wakeonlan '44:8a:5b:56:5b:b0' #14
    wakeonlan '44:8a:5b:56:5f:ff' #15
    wakeonlan '44:8a:5b:56:58:37' #16
    wakeonlan '44:8a:5b:56:56:7e' #17
    wakeonlan '44:8a:5b:56:57:c7' #18
    wakeonlan '00:25:11:8c:c6:8a' #19
    wakeonlan '00:25:11:60:1d:18' #20

    sleep 1.5m

    DIA=`date +"%d-%m-%Y"`
    file="Reportes/$DIA.txt"

    for ip in 192.168.192.{1..20}; do
      ping -c 2 "$ip" >& /dev/null
      result=$?
        if [ $result -eq 0 ]; then # -eq 0 indica que la operacion fue exitosa
        #Comandos si fue exitoso
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" encendió" >> $file # >> indica que se va a llevar a un archivo
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error">> $file # >> indica que se va a llevar a un archivo
      fi
    done

    ;;
    2)
    wakeonlan 'a4:ba:db:ec:2f:93' #1
    wakeonlan 'a4:ba:db:ec:40:f1' #2
    wakeonlan '00:25:64:d6:3c:5e' #3
    wakeonlan 'a4:ba:db:ec:2d:df' #4
    wakeonlan '00:25:64:d7:ff:c3' #5
    wakeonlan 'a4:ba:db:ec:40:0f' #6
    wakeonlan 'a4:ba:db:ec:2f:0e' #7
    wakeonlan 'a4:ba:db:ec:40:4b' #8
    wakeonlan '00:25:64:d8:03:b3' #9
    wakeonlan 'a4:ba:db:ec:2f:63' #10
    wakeonlan '00:25:64:d6:f4:1b' #11
    wakeonlan 'a4:ba:db:ea:f5:af' #12
    wakeonlan '00:25:64:d7:5b:fc' #13

    sleep 1.5m

    DIA=`date +"%d-%m-%Y"`
    file="Reportes/$DIA.txt"

    for ip in 192.168.193.{1..16}; do
      ping -c 2 "$ip" >& /dev/null
      result=$?
        if [ $result -eq 0 ]; then # -eq 0 indica que la operacion fue exitosa
        #Comandos si fue exitoso
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" encendió">> $file # >> indica que se va a llevar a un archivo
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error">> $file # >> indica que se va a llevar a un archivo
      fi
    done

    ;;
    3)
    wakeonlan '00:25:11:8c:c6:2b' #14
    wakeonlan '1c:6f:65:a5:47:91' #15
    wakeonlan '1c:6f:65:a5:4b:11' #16
    wakeonlan '1c:6f:65:a5:4a:ff' #17
    wakeonlan '1c:6f:65:a5:4b:b4' #18
    wakeonlan '00:25:11:64:2c:92' #19
    wakeonlan '1c:6f:65:a5:4b:29' #20
    wakeonlan '1c:6f:65:a5:42:5d' #21
    wakeonlan '1c:6f:65:86:85:8c' #22
    wakeonlan '00:25:11:60:1c:9b' #23

    sleep 1.5m

    DIA=`date +"%d-%m-%Y"`
    file="Reportes/$DIA.txt"

    for ip in 192.168.193.{17..30}; do
      ping -c 2 "$ip" >& /dev/null
      result=$?
        if [ $result -eq 0 ]; then # -eq 0 indica que la operacion fue exitosa
        #Comandos si fue exitoso
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" encendió" >> $file # >> indica que se va a llevar a un archivo
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error" >> $file # >> indica que se va a llevar a un archivo
      fi
    done

    ;;
    4)
    wakeonlan '74:27:ea:c8:a3:fd' #11
    wakeonlan '74:27:ea:c7:00:18' #2
    wakeonlan '74:27:ea:c8:3a:8e' #3
    wakeonlan '74:27:ea:c8:ac:f8' #4
    wakeonlan '74:27:ea:c6:8c:ad' #5
    wakeonlan '74:27:ea:c7:00:1e' #6
    wakeonlan '74:27:ea:c8:a6:e8' #7
    wakeonlan '74:27:ea:c8:3b:2f' #8
    wakeonlan '74:27:ea:c8:3a:ee' #9
    wakeonlan '74:27:ea:c7:77:d9' #10
    wakeonlan '74:27:ea:c8:3a:a6' #11
    wakeonlan '74:27:ea:c1:c8:c0' #12
    wakeonlan 'd4:3d:7e:a7:45:08' #13
    wakeonlan '74:27:ea:c5:68:ce' #14
    wakeonlan '4c:cc:6a:3a:46:e2' #15
    wakeonlan '74:27:ea:c1:c9:1b' #16
    wakeonlan '74:27:ea:c8:3a:8c' #17
    wakeonlan '74:27:ea:c8:59:77' #18
    wakeonlan '74:27:ea:c8:ab:12' #19
    wakeonlan '74:27:ea:c8:3c:a1' #20
    wakeonlan '74:27:ea:c7:00:85' #21
    wakeonlan '74:27:ea:c7:00:39' #22
    wakeonlan '74:27:ea:c7:78:24' #23
    wakeonlan '74:27:ea:c8:ab:11' #24
    wakeonlan 'd4:3d:7e:cf:f6:6a' #25
    wakeonlan '74:27:ea:c5:f8:05' #26
    wakeonlan '74:27:ea:c5:68:cd' #27
    wakeonlan '44:8a:5b:c8:76:3c' #28
    wakeonlan '74:27:ea:c5:68:ef' #29
    wakeonlan '74:27:ea:c5:67:a9' #30

    sleep 1.5m

    DIA=`date +"%d-%m-%Y"`
    file="Reportes/$DIA.txt"

    for ip in 192.168.194.{1..30}; do
      ping -c 2 "$ip" >& /dev/null
      result=$?
        if [ $result -eq 0 ]; then # -eq 0 indica que la operacion fue exitosa
        #Comandos si fue exitoso
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" encendió">> $file # >> indica que se va a llevar a un archivo
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error">> $file # >> indica que se va a llevar a un archivo
      fi
    done

    ;;
    *)
    echo "Señor/señorita ¿usted donde trabaja?, no existe la sala $sala"
    ;;
  esac
fi
