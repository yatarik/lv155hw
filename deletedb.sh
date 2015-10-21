#!/bin/bash
echo "Enter password to show databases list: " 
echo "show databases;" | mysql -u root -p

echo -n "Enter database name what you want to delete: "
read dbname 
echo -n "Enter DB username: "
read dbuser



mysqladmin -u $dbuser -p drop $dbname

echo "Enter password to show databases list: " 
echo "show databases;" | mysql -u root -p
