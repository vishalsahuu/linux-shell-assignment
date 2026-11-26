
# Linux Shell Scripting Assignment

## Overview
This project contains two Bash scripts for basic Linux system monitoring and log file analysis.

## 1. System Information Script (sysinfo.sh)

This script displays:
- Hostname
- Current date and time
- Logged-in user
- Disk usage of root directory
- Memory usage
- Top 5 processes by memory usage

It also saves the output in a date-wise report file.

### Run the script
```bash
chmod +x sysinfo.sh
./sysinfo.sh
```

## 2. Log Report Script (log_report.sh)

This script analyzes a log file and displays:
- Total number of requests
- Number of 404 errors
- Top 3 IP addresses

It also handles missing arguments and invalid file paths.

### Run the script
```bash
chmod +x log_report.sh
./log_report.sh sample.log
```

## 3. Cron Job

A cron job is configured to execute the system information script automatically every hour.

Cron entry:
```bash
0 * * * * /home/vishal_sahu/linux-shell-assignment/sysinfo.sh
```

## Technologies Used
- Linux (Ubuntu)
- Bash Shell Scripting
- Git and GitHub
- Cron

## Project Files
- sysinfo.sh
- log_report.sh
- sample.log
- README.md
