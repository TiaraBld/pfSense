#create a mysql database 

mysql -e "CREATE DATABASE pfsense"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'"