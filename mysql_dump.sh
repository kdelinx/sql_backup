#!/bin/bash

####################################
# This script make for exec backup #
# Develope by Afonin Artem         #
# by nickname of kdelinx           #
####################################

mkdir -p $PATH

MYSQL = 'which mysqlump';
if [[ $(whoami) == root ]]; then
  echo "Enter pass for Super-user"
  read PASS;
fi
DATE='date --date="today" +%F'
PATH='/var/backup/mysql'

$MYSQL -u root -p $PASS --all-databases >  $PATH/mysql-$DATE-backup.sql
