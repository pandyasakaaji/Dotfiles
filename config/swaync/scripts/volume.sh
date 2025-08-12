#!/bin/bash

# Get volume and mute status from PipeWire
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}')
is_muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o MUTED)

# Notification timeout in milliseconds
timeout=1000  # 2 seconds

if [ "$is_muted" == "MUTED" ]; then
    # Show mute notification
    notify-send -a "Volume" \
        -u low \
        -t "$timeout" \
        -h int:value:"$volume" \
        -h string:x-canonical-private-synchronous:volume_notif \
        -h string:fr-dodo-notification-widget:osd \
        -i "audio-volume-muted-symbolic" \
        "Volume: Muted"
else
    # Show normal volume notification
    notify-send -a "Volume" \
        -u low \
        -t "$timeout" \
        -h int:value:"$volume" \
        -h string:x-canonical-private-synchronous:volume_notif \
        -h string:fr-dodo-notification-widget:osd \
        -i "audio-volume-high-symbolic" \
        "Volume: ${volume}%"
fi

