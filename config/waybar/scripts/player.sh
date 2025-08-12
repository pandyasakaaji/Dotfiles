truncate() {
    local str="$1"
    local limit="$2"
    if [ ${#str} -gt $limit ]; then
        echo "${str:0:$limit}…"
    else
        echo "$str"
    fi
}

artist=$(playerctl metadata artist)
title=$(playerctl metadata title)
status=$(playerctl status)

short_artist=$(truncate "$artist" 50)
short_title=$(truncate "$title" 50)

# Set icon only
if [ "$status" = "Playing" ]; then
    icon="|>"
elif [ "$status" = "Paused" ]; then
    icon="||"
else
    icon="-"
fi

# Echo with icon
echo "$short_artist - $short_title"

