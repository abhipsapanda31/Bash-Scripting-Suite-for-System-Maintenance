#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/maintenance.log"
DATE=$(date)

echo "[$DATE] Starting cleanup..." >> "$LOG_FILE"
rm -rf /tmp/* 2>> "$LOG_FILE"
echo "[$DATE] Cleanup complete!" >> "$LOG_FILE"
echo "✅ Cleanup done successfully."

