#!/bin/bash

# Usage: bash 15_sql_runner.sh postgres mydb myquery.sql

ENGINE=$1
DB_NAME=$2
SQL_FILE=$3

if [[ -z "$ENGINE" || -z "$DB_NAME" || -z "$SQL_FILE" ]]; then
  echo "Usage: $0 <postgres|mysql> <dbname> <sql_file>"
  exit 1
fi


if [[ "$ENGINE" == "postgres" ]]; then
  psql -d "$DB_NAME" -f "$SQL_FILE"
elif [[ "$ENGINE" == "mysql" ]]; then
  mysql "$DB_NAME" < "$SQL_FILE"
else
  echo "❌ Unsupported engine. Use 'postgres' or 'mysql'."
  exit 1
fi