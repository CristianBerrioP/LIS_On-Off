#!/bin/bash
#--------------------------------------------------#
#---Script para el apagado de las salas------------#
#---Autor: Cristian Berrio-------------------------#
#---Universidad de Antioquia-----------------------#
#---Este script fue realizado para el -------------#
#--- Laboratorio Integrado de Sistemas-------------#
#--------------------------------------------------#
clear
wid=$(zenity --password --title="Ingreso de password")
openPass='appPass'
clearPass='systemPass'
if [ $wid = $openPass ]; then
  sala=$(zenity  --list  --text "Seleccione el numero de sala que quiere apagar" --radiolist  --column " " --column "Sala" FALSE "1" FALSE "2" FALSE "3" FALSE "4");
  textScript="echo '$clearPass' | sudo -S shutdown now"
  userName="lis"
  if [ $sala == '1' ]; then
  	for ip in 192.168.192.{1..20}; do
      sshpass -p "$clearPass" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
      valorRetorno=$?
      ping -c 2 ${ip}
      valorRetornoPing=$?
      if [ $valorRetornoPing -eq 0 ]; then
        if [ $valorRetorno -ne 0 ]; then # -eq indica que la operacion fue exitosa
          #Comandos si fue exitoso
          computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
          echo "El pc: "$computador" apagó" >> LogApagado # >> indica que se va a llevar a un archivo
        fi
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error" >> LogApagado # >> indica que se va a llevar a un archivo
      fi
  	done
  elif [ $sala == '2' ]; then
  	for ip in 192.168.193.{1..16}; do
      sshpass -p "$clearPass" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
      valorRetorno=$?
      ping -c 2 ${ip}
      valorRetornoPing=$?
      if [ $valorRetornoPing -eq 0 ]; then
        if [ $valorRetorno -ne 0 ]; then # -eq indica que la operacion fue exitosa
          #Comandos si fue exitoso
          computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
          echo "El pc: "$computador" apagó" >> LogApagado # >> indica que se va a llevar a un archivo
        fi
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error" >> LogApagado # >> indica que se va a llevar a un archivo
      fi
    done
  elif [ $sala == '3' ]; then
  	for ip in 192.168.193.{17..30}; do
      sshpass -p "$clearPass" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
      valorRetorno=$?
      ping -c 2 ${ip}
      valorRetornoPing=$?
      if [ $valorRetornoPing -eq 0 ]; then
        if [ $valorRetorno -ne 0 ]; then # -eq indica que la operacion fue exitosa
          #Comandos si fue exitoso
          computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
          echo "El pc: "$computador" apagó" >> LogApagado # >> indica que se va a llevar a un archivo
        fi
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error" >> LogApagado # >> indica que se va a llevar a un archivo
      fi
    done
  elif [ $sala == '4' ]; then
  	for ip in 192.168.194.{1..30}; do
      sshpass -p "$clearPass" ssh -o StrictHostKeyChecking=no -l ${userName} ${ip} ${textScript}
      valorRetorno=$?
      ping -c 2 ${ip}
      valorRetornoPing=$?
      if [ $valorRetornoPing -eq 0 ]; then
        if [ $valorRetorno -ne 0 ]; then # -eq indica que la operacion fue exitosa
          #Comandos si fue exitoso
          computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
          echo "El pc: "$computador" apagó" >> LogApagado # >> indica que se va a llevar a un archivo
        fi
      else
        #Comandos si fue error
        computador=$(echo $ip| cut -d'.' -f 4 ) # con cut extraemos un substring
        echo "El pc: "$computador" tuvo un error" >> LogApagado # >> indica que se va a llevar a un archivo
      fi
    done
  else
    zenity --error --text="Esa sala no existe"
  fi
else
  zenity --error  --text="Contraseña equivocada"
fi
