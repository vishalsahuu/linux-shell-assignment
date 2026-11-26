
#!/bin/bash

REPORT="sysinfo_$(date +%F).txt"
exec > >(tee "$REPORT") 2>&1

echo "================================"
echo "       SYSTEM INFORMATION"
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current Date and Time:"
date

echo ""
echo "Logged-in User:"
whoami

echo ""
echo "Disk Usage of Root (/):"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Top 5 Processes by Memory:"
ps aux --sort=-%mem | head -n 6

echo ""
echo "================================"
echo "       REPORT COMPLETED"
echo "================================"
