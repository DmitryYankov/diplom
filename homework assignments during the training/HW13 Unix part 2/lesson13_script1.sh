#!/bin/bash
mkdir /home/"$USER"/lesson13
# have two strings inside: Hello string and current date-time
touch /home/"$USER"/lesson13/two.txt

echo "Hello string" > /home/"$USER"/lesson13/two.txt
date >> /home/"$USER"/lesson13/two.txt
# empty file with 777 permissions set
touch /home/"$USER"/lesson13/777.txt
 echo "777" > /home/"$USER"/lesson13/777.txt
chmod 777 /home/"$USER"/lesson13/777.txt

# have one random string
echo $RANDOM | md5sum | head -c 20 > /home/"$USER"/lesson13/random.txt

# just empty file
touch /home/"$USER"/lesson13/file{1..2}.txt
