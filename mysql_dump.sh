#!/bin/bash

MYSQL = 'which mysqlump';
if [[ $(whoami) == root ]]; then
  read PASS;
fi
DATE='date --date="today" +%F'
PATH = '/var/backup'

$MYSQL -u root -p $PASS --all-databases >  $PATH/mysql-$DATE-backup.sql
