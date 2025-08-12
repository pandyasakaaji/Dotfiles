#!/bin/bash

# Listen to PipeWire events
wpctl subscribe | while read -r _; do
    # Get volume
    VOL_RAW=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
    VOL=$(echo "$VOL_RAW" | awk '{print int($2*100)}')
    MUTED=$(echo "$VOL_RAW" | grep -o MUTED)

    # Get current port (Headphones or Speakers)
    PORT=$(wpctl inspect @DEFAULT_AUDIO_SINK@ | grep -A2 "active_port" | tail -n1 | tr -d ' "')

    if [[ "$MUTED" == "MUTED" ]]; then
        ICON=""
        VOL=0
    else
        if [[ "$PORT" == *"headphone"* ]]; then
            ICON=" "
        else
            ICON=" "
        fi
    fi

    echo "$VOL% $ICON"
done

