#!/bin/bash
echo "Starting Bash Scripting Suite..."
echo "==================================="

bash cleanup.sh
bash backup.sh
bash monitor.sh
bash update.sh
bash report.sh

echo "==================================="
echo "✅ All maintenance tasks completed successfully!"
