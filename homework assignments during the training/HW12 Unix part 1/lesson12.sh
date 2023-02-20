#!/bin/bash

# Create a file in the home directory
touch ~/lesson12/lesson12.txt

# Add three strings in the file using echo command

echo "date" > ~/lesson12/lesson12.txt
echo 'date' >> ~/lesson12/lesson12.txt
# shellcheck disable=SC2046,SC2005,SC2006
echo `date` >> ~/lesson12/lesson12.txt

# Define three different variables
var1="String text"
var2="$(ls)"
# shellcheck disable=SC2004
var3=$((1 + $RANDOM % 20))

# Echo variables' values (one per line) using ONE ECHO command
echo "$var1"$'\n'"$var2"$'\n'$var3 >> ~/lesson12/lesson12.txt
