#!/bin/bash

# Usage: bash 05_db_backup.sh postgres dbname user

ENGINE=$1
DB_NAME=$2
USER=$3
DATE=$(date +%F_%H-%M)

if [[ "$ENGINE" == "postgres" ]]; then
    pg_dump -U "$USER" "$DB_NAME" > "${DB_NAME}_backup_$DATE.sql"
    echo "PostgreSQL backup created."

elif [[ "$ENGINE" == "mysql"]]; then
    mysqldump -u "$USER" -p "$DB_NAME" > "${DB_NAME}_backup_$DATE.sql"
  echo "MySQL backup created."
else
    echo "Usage: $0 <postgres|mysql> <dbname> <user>"
    exit 1
fi