#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log_analyzer.sh /var/log/syslog [keyword]
# Author: Aditya Singh (24BCE10249)

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Do-while style retry if the file is missing or empty
while [ -z "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Error: File not found or is empty."
    read -p "Please enter a valid, non-empty log file path (e.g., /var/log/syslog): " LOGFILE
done

if [ -f "$LOGFILE" ]; then
    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            COUNT=$((COUNT + 1))
        fi
    done < "$LOGFILE"

    echo "--------------------------------------"
    echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
    echo "--------------------------------------"
    echo "Last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
else
    echo "Error: File $LOGFILE could not be processed."
    exit 1
fi
