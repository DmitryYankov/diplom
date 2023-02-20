#!/bin/bash


#describe existing scripts and choice of necessary
echo "Please choose script: "
echo "  1) Script 1: multiply two numbers provided as parameters"
echo "  2) Script 2: recursively print all files in the directory"
echo "  3) Script 3: recieve array with some characters as parameter"
echo "  4) Quit" 
read -r n

case "$n" in
  1) echo "Please enter the first param"
     read -r param1
     echo "Please enter the second param"
     read -r param2

     ./1.sh "$param1" "$param2"              #start first script
    ;;
  2) ./2.sh                     #start second script
    ;;
  3) echo "Please enter array"
     read -r par
     ./3.sh "$par"              #start third script
    ;;
  4) echo "Quit"            
    exit                        #exit from script
    ;;
  *) echo "Wrong input. Enter 1-4"          #wrong input
    ;;        
esac
exit 1