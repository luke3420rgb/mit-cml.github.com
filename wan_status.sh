#!/data/data/com.termux/files/usr/bin/bash
LOG="/storage/emulated/0/Documents/wan_status.txt"
ping -c 1 google.com > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "[$(date)] WAN Status: Active" > "$LOG"
else
  echo "[$(date)] WAN Status: Fallback or Offline" > "$LOG"
fi
