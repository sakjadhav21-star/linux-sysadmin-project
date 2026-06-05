#!/bin/bash

LOG_DIR="logs"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/health_$(date +%Y-%m-%d_%H-%M-%S).log"

echo "===== SERVER HEALTH CHECK =====" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "---- DISK USAGE ----" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "---- MEMORY USAGE ----" >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "---- CPU LOAD ----" >> "$LOG_FILE"
uptime >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "---- RUNNING SERVICES (ssh, cron, docker) ----" >> "$LOG_FILE"

SERVICES=("ssh" "cron" "docker")

for service in "${SERVICES[@]}"
do
    systemctl status $service >> "$LOG_FILE" 2>&1
    echo "" >> "$LOG_FILE"
done

echo "===== END OF REPORT =====" >> "$LOG_FILE"
