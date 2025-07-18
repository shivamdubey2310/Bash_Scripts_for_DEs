#!/bin/bash

# Usage: bash 04_s3_sync.sh /local/dir s3://your-bucket/path

LOCAL_DIR=$1
S3_PATH=$2

if [[ -z "$LOCAL_DIR" || -z "$S3_PATH"]]; then
    echo "Usage: $0 <local_dir> <s3_path>"
    exit 1
fi

if ! command -v aws &> /dev/null ; then
    echo "AWS CLI not found. Please install it first."
    exit 1
fi

aws s3 sync "$LOCAL_DIR" "$S3_PATH" --delete