#!/bin/bash

# detects how many files were created in the directory
countfiles=$(find /home/"$USER"/lesson13 -type f| wc -l )
echo "count files: $countfiles"

# find need files
files=$(find /home/"$USER"/lesson13 -type f \( ! -iname "*.sh" \))
# replaces all permissions set to 777 with 664
for file in $files
do
	if [ "$(stat -c "%a" "$file")" -eq "777" ]
	then
		chmod 664 "$file"
	fi
done

# detects empty files and removes them
find /home/"$USER"/lesson13 -type f \( ! -iname "*.sh" \) -size 0 -print -delete

# find need files
rmtext=$(find /home/"$USER"/lesson13 -type f \( ! -iname "*.sh" \))
# removes all lines except the first one
for file in $rmtext
do
	sed -n -i '1p' "$file"
done