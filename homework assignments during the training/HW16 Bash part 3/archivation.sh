#!/bin/bash

####################################### Task ########################################################################
### [] create backup script for some data folder                                                                     #
### [] this script should be able to work in different modes                                                         #
##### [] backups minutely (with miliseconds in the archive name): 2022-07-17-09:53:53.3332211.zip                    #
##### [] backups hourly (with just day-hour): 2022-07-17-09:53.zip                                                   #
##### [] backups daily: 2022-07-17.zip                                                                               #
### [] script should also include archive file list in the archive and some meta information                         #
### [ ] about the execution details (who, when and how)                                                              #
### [ ] script should be added in crontab                                                                            #
#####################################################################################################################

# Инструменты:
# zip
# cron

# Фунционал:
# + получить параметры - путь папки и режим
# + создание и заполнение мета файла
# + вывести содержимое папки, которая будет архивироваться в мета файла
# + архивация
# +- крон
# копирование на удаленный сервер

# install tree
sudo apt-get install tree zip -y > /dev/null

MODE=$1          #cron mode
PATH_FOLDER=$2      #archive path
# TODO: add second parameter for script to input the folder to backup
#PATH_FOLDER="./app"

# create cron and archive name
case $MODE in
    "minutely")
        cron_schedule="* * * * *"        
        archive_name=$(date +%Y-%m-%d-%T.%7N)
        ;;
    "hourly")
        cron_schedule="1 * * * *"
        archive_name=$(date +%Y-%m-%d-%H)
        ;;
    "daily")
        cron_schedule="0 20 * * *"
        archive_name=$(date +%Y-%m-%d)
        ;;
    *)
        echo "Wrong input"
        exit 1
        ;;
esac

#TODO: add variable LAUNCHER = manual \ cron, check who executed this script and write it to meta.txt
# shellcheck disable=SC2009
CRON=$(ps -ef | grep "/usr/sbin/CRON -f" | awk '{print $2}' | head -1)  # checking the PID of CRONjob
# shellcheck disable=SC2009
SCRIPT=$(ps -ef | grep "$0 $1" | awk '{print $3}' | head -1)            # checking the PPID the our running script
if [ "$CRON" -eq "$SCRIPT" ]; then 
      LAUNCHER="start from CRON"
else
      LAUNCHER="start from user"
fi

#create meta file
touch ~/meta.txt
{
whoami 
date
echo "Mode: $MODE" 
echo "Launcher: $LAUNCHER"
echo "files:"
tree -a "$PATH_FOLDER"
} > ~/meta.txt

#archivation 
zip -r ~/"$archive_name".zip "$PATH_FOLDER"
#cron
#TODO: check for active cron and dont duplicate 
crontab -l | grep "$cron_schedule ~/archivation.sh $1 $2" || (crontab -l 2>/dev/null; echo "$cron_schedule ~/archivation.sh $1 $2") | crontab -

#TODO: copying to remote
echo "copying to remote"
scp "$HOME/$archive_name".zip 192.168.56.106:~/lesson16