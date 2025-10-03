#!/data/data/com.termux/files/usr/bin/bash
LOG="/storage/emulated/0/Documents/network_trace.txt"
echo "[$(date)] Network Trace:" > "$LOG"
for IP in 10.1.5.0 192.168.45.2 google.com; do
  ping -c 1 $IP > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "$IP ✅ reachable" >> "$LOG"
  else
    echo "$IP ❌ unreachable" >> "$LOG"
  fi
done
