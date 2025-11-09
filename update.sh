#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/maintenance.log"
DATE=$(date)

echo "[$DATE] Simulating system update..." >> "$LOG_FILE"
echo "✅ Update complete (simulated)."
