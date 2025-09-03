#!/bin/bash


THRESHOLD=90


USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "Current Memory Usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "ALERT: Memory usage is above ${THRESHOLD}% (Current: ${USAGE}%)"
else
    echo "Memory usage is under control."
fi
