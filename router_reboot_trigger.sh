#!/data/data/com.termux/files/usr/bin/bash
LOG="/storage/emulated/0/Documents/router_reboot_log.txt"
TARGET="192.168.1.1"  # Replace with your actual router IP
ping -c 1 $TARGET > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "[$(date)] Router unreachable — reboot likely" >> "$LOG"
else
  echo "[$(date)] Router reachable" >> "$LOG"
fi
