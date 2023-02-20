#!/bin/bash

#Develop a script with a function which will recursively print all files in the directory provided as a parameter
# provided via READ. If this path contains folders - script should recursively do the same in this folder.


#declare func
function walk_dir () {

   #find hidden pathnames and will not have to test specially for possibly empty directories
   shopt -s nullglob dotglob

    for pathname in "$1"/*;
	do
	if [ -d "$pathname" ];
	then
            walk_dir "$pathname"
        else
            printf '%s\n' "$pathname"
        fi
    done
}

#print directory
echo "Enter directory"
read -r dir

#call func
walk_dir "$dir"
