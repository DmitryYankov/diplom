#!/bin/bash

#Develop a script with a function which will recieve array with some characters as parameter.
#The script should print all array items following "one line - one item" output pattern.


#declare func
function paramlist() {
   arr=("$@")
   for i in "${arr[@]}";
      do
          echo "$i"
      done

}
#array fom parameters
array=("$@") 

#call func
paramlist "${array[@]}"