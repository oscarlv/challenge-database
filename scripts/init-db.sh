#!/bin/bash

# Wait for MariaDB service to start
#echo "=> Waiting for MariaDB service to start"
#until mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SELECT 1" &>/dev/null; do
  #sleep 5
#done

echo "=> MariaDB service is up and running"

echo "Checking for databases to import from environment variables INSTALL_<DB_NAME>";

if [ -n "$INSTALL_ONTOP" ]; then
    echo "=> Importing example database 'ontop'"
    mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE ontop"
    mysql -uroot -p${MYSQL_ROOT_PASSWORD} ontop < ontop.sql
fi

echo "=> Granting access to all databases for '${MYSQL_USER}'"
#mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '{$MYSQL_PASSWORD}'"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' WITH GRANT OPTION"

echo "=> Done!"