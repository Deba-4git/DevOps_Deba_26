#!/bin/bash
echo "======================================="
echo "     System health check report        "
echo "======================================="

echo "1.(current user):"
whoami

echo -e "\n2. (disk usage):"
df -h | awk 'NR==2 {print " Available: " $4 " | Used: " $5}'

echo -e "\n3. (Memory usage):"
free -h |awk 'NR==2 {print " TOTAL: " $2 " |FREE: " $4}'

echo "========================================================"
