#!/bin/bash

# Usage: bash 14_schedule_task.sh "/path/to/script.sh" "0 2 * * *"

SCRIPT=$1
CRON_TIME="$2"

if [[ -z "$SCRIPT" || -z "$CRON_TIME" ]]; then
  echo "Usage: $0 <script_path> <cron_schedule>"
  echo "Example schedule: '0 2 * * *' (daily at 2 AM)"
  exit 1
fi

(crontab -l 2>/dev/null; echo "$CRON_TIME bash $SCRIPT") | crontab -
echo "✅ Cron job scheduled: $CRON_TIME bash $SCRIPT"