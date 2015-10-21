#!/bin/bash

printf "Script: check database" 

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # no color

printf -n "Enter DB name: "

read DBNAME
DBEXISTS=$(mysql -u root -p --batch --skip-column-names -e "SHOW DATABASES LIKE '"$DBNAME"';" | grep "$DBNAME" > /dev/null; echo "$?" )
if [ $DBEXISTS -eq 0 ]; 
then
	printf " ${RED} A database with name $DBNAME already exists. ${NC} \n"
	exit;
else
	printf "${GREEN} A database with name $DBNAME dosn't exist. ${NC} \n"
fi
