#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/system-monitor.log"
DATE=$(date)

echo "[$DATE] System Monitor:" >> "$LOG_FILE"
top -n 1 >> "$LOG_FILE" 2>/dev/null
echo "✅ System resources logged successfully!"
