
#!/bin/bash

# Check whether log file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

# Check whether file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

echo "================================"
echo "          LOG REPORT"
echo "================================"

# Total number of requests
TOTAL=$(awk 'NF {count++} END {print count+0}' "$LOG_FILE")
echo "Total Requests: $TOTAL"

# Count 404 errors
ERRORS=$(awk '$NF == 404 {count++} END {print count+0}' "$LOG_FILE")

echo "404 Errors: $ERRORS"

echo ""
echo "Top 3 IP Addresses:"

# Find top 3 IP addresses
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 3

echo ""
echo "================================"
echo "       REPORT COMPLETED"
echo "================================"
