#!/bin/bash
percentage=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')

notify-send -a "Brightness" \
    -u low \
    -t 1000 \
    -h int:value:"$percentage" \
    -h string:x-canonical-private-synchronous:brightness_notif \
    -h string:fr-dodo-notification-widget:osd \
    -i "display-brightness-symbolic" \
    "Brightness: ${percentage}%"

