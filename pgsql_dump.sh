#!/bin/bash

PATH = '/var/backup/pgsql'
PG_DUMP = 'which pg_dump'
##########################
echo "Enter host for pgsql"
read HOST

echo "Enter username for pgsql"
read USERNAME

echo "Enter role"
read ROLE

echo "Enter database name"
read DBNAME

#/usr/bin/pg_restore --host localhost --port 5432 --username "postgres" --dbname "rapida" --role "hp" --no-password  --schema public --verbose "/home/kdelinx/123"

$PG_DUMP --host $HOST --port 5432 --username "$USERNAME" --role "$ROLE" --no-password  --format custom --encoding UTF8 --verbose --file "$PATH/date --date="today" +%F" "$DBNAME"
