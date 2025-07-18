#!/bin/bash

# Usage: bash 16_env_loader.sh .env

ENV_FILE=$1

if [[ -z "$ENV_FILE" ]]; then
  echo "Usage: $0 <env_file>"
  exit 1
fi

set -o allexport
source "$ENV_FILE"
set +o allexport

echo "Environment variables loaded from $ENV_FILE"