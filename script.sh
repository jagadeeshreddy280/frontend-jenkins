
#!/bin/bash
LOGFILE=/home/ec2-user/LOGFILE
LAST_30_MINS=$(date -d "30 minutes ago" +"%Y-%m-%d %H:%M:%S")

echo "Fetching logs from $LAST_30_MINS to $TIMESTAMP..."

journalctl --since "$LAST_30_MINS" >> "$LOGFILE"

echo "Logs saved to $LOGFILE."
