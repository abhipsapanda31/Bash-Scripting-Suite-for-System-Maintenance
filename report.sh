#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
REPORT_FILE="$LOG_DIR/system-report.txt"
DATE=$(date)

{
  echo "===== SYSTEM HEALTH REPORT ($DATE) ====="
  echo "Hostname: $(hostname)"
  echo "Username: $USERNAME"
  echo "OS Version: $(cmd /c ver < /dev/null | tr -d '\r')"
  echo -n "Disk Usage (C:): "
  df -h | grep -E "C:" | awk '{print $3 "/" $2 " (" $5 ")"}'
  echo "===== END OF REPORT ====="
} > "$REPORT_FILE"

echo "✅ Report generated at $REPORT_FILE"
