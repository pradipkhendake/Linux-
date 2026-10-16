#!/bin/bash

# =====================================================================
# crontab -e
# 0 * * * * /bin/bash /home/pradip/run_cron_task.sh  
# # 0 * * * * — Run every hour -> /bin/bash /path/to/run_cron_task.sh
# 0 0 * * * — Run every day at midnight -> /bin/bash /path/to/run_cron_task.sh
# 30 2 * * 1 — Run every Monday at 2:30 AM -> /bin/bash /path/to/run_cron_task.sh
# =====================================================================

# Define the target directory where output files will be stored
OUT_DIR="/home/pradip/cron_outputs"

# Create the directory if it does not already exist
mkdir -p "$OUT_DIR"

# Generate a unique filename using the current date and time
FILENAME="$OUT_DIR/task_output_$(date +\%Y\%m\%d_\%H\%M\%S).txt"

# Write system information and output to the newly created file
echo "=== Cron Job Execution Report ===" > "$FILENAME"
echo "Timestamp: $(date)" >> "$FILENAME"
echo "---------------------------------" >> "$FILENAME"
echo "Current Disk Usage:" >> "$FILENAME"
df -h >> "$FILENAME"
echo "" >> "$FILENAME"
echo "Logged-in Users:" >> "$FILENAME"
who >> "$FILENAME"

echo "Output successfully saved to: $FILENAME"
