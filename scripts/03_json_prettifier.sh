#!/bin/bash

# Usage: bash 03_json_prettifier.sh input.json

FILE=$1

if [[ -z "$FILE"]]; then
    echo "Usage: $0 <json_file>" 
    exit 1
fi

if ! command -v jq &> /dev/null ; then 
    echo "'jq' is required but not installed."
    exit 1
fi

jq . "$FILE"