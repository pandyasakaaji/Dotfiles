#!/bin/bash

# Set your threshold
THRESHOLD=20

# Get current battery percentage using upower
BATTERY_LEVEL=$(upower -i $(upower -e | grep BAT) | grep percentage | awk '{print $2}' | sed 's/%//')

# Check charging status
IS_CHARGING=$(upower -i $(upower -e | grep BAT) | grep state | awk '{print $2}')

# If not charging and battery is low
if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ] && [ "$IS_CHARGING" != "charging" ]; then
    notify-send "⚠️ Low Battery" "Battery is at ${BATTERY_LEVEL}%" -u critical
fi

