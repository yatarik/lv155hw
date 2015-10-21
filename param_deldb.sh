#!/bin/bash
 
echo "Sript: drop database"

#mysql_config_editor set --login-path=local --host=localhost --user=username --password
mysql --login-path=local  -e "show databases;"

echo "<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>"

echo -n "Enter database name what you want to delete: "
read dbname 
echo -n "Enter DB username: "
read dbuser


mysqladmin -u $dbuser -p drop $dbname


echo "<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>" 
mysql --login-path=local  -e "show databases;"

