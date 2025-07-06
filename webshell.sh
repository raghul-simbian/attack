#!/bin/bash

echo "[+] Running malicious payload"

# Simulate obfuscation
cmd="ZWNobyAiVHJpZ2dlcmVkIGFjdGl2aXR5IGZyb20gcGF5bG9hZC5zaCIK"  # echo "Triggered activity from payload.sh"
echo "$cmd" | base64 -d | bash

# Touch IOC file (detection trick)
touch /etc/.hidden_persistence
