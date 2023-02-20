#!/bin/bash
#----------------------------------------
# OPTIONS
#----------------------------------------
USER1='mysqlownerdb1'       # Users
USER2='mysqlownerdb2'
USER3='ownerdb1'
USER4='ownerdb2'
db1='mysqldb1'
db2='mysqldb2'
db3='postgredb1'
db4='postgredb2'
PASSWORD='Mynewpassword1!' # Password
BACKUP_PATH1="/opt/mysql_backup"
BACKUP_PATH2="/opt/postgresql_backup"
#----------------------------------------
date=$(date)

echo "Backing up database: $db1"      
mysqldump -u "$USER1" -p$PASSWORD --databases $db1 > "$BACKUP_PATH1"/"$date"-$db1.sql

echo "Backing up database: $db2"      
mysqldump -u "$USER2" -p$PASSWORD --databases $db2 > "$BACKUP_PATH1"/"$date"-$db2.sql

echo "Backing up database: $db3"      
PGPASSWORD="$PASSWORD" pg_dump -U "$USER3" -h localhost  -d $db3  > "$BACKUP_PATH2"/"$date"-$db3.sql

echo "Backing up database: $db4"      
PGPASSWORD="$PASSWORD" pg_dump -U "$USER4" -h localhost -d $db4 > "$BACKUP_PATH2"/"$date"-$db4.sql





