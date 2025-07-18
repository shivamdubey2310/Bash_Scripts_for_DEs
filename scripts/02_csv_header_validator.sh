#!/bin/bash

# Usage: bash 02_csv_header_validator.sh file.csv "col1,col2,col3"

FILE=$1
EXPECTED_HEADER=$2

if [[ -z "$FILE" || -z "$EXPECTED_HEADER"]]; then
	echo "Usage: $0 <csv_file> <expected_header>"
	exit 1
fi 

ACTUAL_HEADER=$(head -n 1 "$FILE")

if [["$ACTUAL_HEADER" == "$EXPECTED_HEADER"]]; then
	echo "Header is valid."
else
	echo "Header mismatch!"
	echo "Expected: $EXPECTED_HEADER"
	echo "Found: $ACTUAL_HEADER"
fi