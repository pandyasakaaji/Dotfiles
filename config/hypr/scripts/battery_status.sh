#!/bin/bash

# Get battery percentage
BATTERY_PERCENTAGE=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)

# Get battery status (Charging, Discharging, Full)
BATTERY_STATUS=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)

# Define Nerd Font icons (make sure you have a Nerd Font installed, e.g., JetBrainsMono Nerd Font)
# You can find more icons here: https://www.nerdfonts.com/cheat-sheet
ICON_CHARGING="󰂄" # U+F0084
ICON_FULL="󰁹"     # U+F0079
ICON_EMPTY="󰂃"    # U+F0083
ICON_LOW="󰁺"      # U+F007A (10%)
ICON_MED_LOW="󰁼"  # U+F007C (30%)
ICON_MED_HIGH="󰁾" # U+F007E (50%)
ICON_HIGH="󰂁"     # U+F0081 (80%)
ICON_GENERIC="󰁹" # Fallback icon

BATTERY_ICON=""

if [ -z "$BATTERY_PERCENTAGE" ]; then
    echo "No Battery"
    exit 0
fi

if [ "$BATTERY_STATUS" = "Charging" ]; then
    BATTERY_ICON="$ICON_CHARGING"
elif [ "$BATTERY_STATUS" = "Full" ]; then
    BATTERY_ICON="$ICON_FULL"
elif [ "$BATTERY_PERCENTAGE" -le 10 ]; then
    BATTERY_ICON="$ICON_LOW"
elif [ "$BATTERY_PERCENTAGE" -le 30 ]; then
    BATTERY_ICON="$ICON_MED_LOW"
elif [ "$BATTERY_PERCENTAGE" -le 60 ]; then
    BATTERY_ICON="$ICON_MED_HIGH"
elif [ "$BATTERY_PERCENTAGE" -le 90 ]; then
    BATTERY_ICON="$ICON_HIGH"
else
    BATTERY_ICON="$ICON_GENERIC"
fi

echo "$BATTERY_ICON $BATTERY_PERCENTAGE%"
