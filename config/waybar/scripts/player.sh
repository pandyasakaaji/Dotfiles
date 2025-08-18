truncate() {
    local str="$1"
    local limit="$2"
    if [ ${#str} -gt $limit ]; then
        echo "${str:0:$limit}…"
    else
        echo "$str"
    fi
}

escape_markup() {
    local str="$1"
    str="${str//&/&amp;}"   # Escape &
    str="${str//</&lt;}"   # Escape <
    str="${str//>/&gt;}"   # Escape >
    # str="${str//\"/&quot;}" # Escape "
    # str="${str//\'/&apos;}" # Escape '
    echo "$str"
}

artist=$(playerctl metadata artist)
title=$(playerctl metadata title)
status=$(playerctl status)

# Escape markup before truncating
artist=$(escape_markup "$artist")
title=$(escape_markup "$title")

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
echo "( $short_artist - $short_title )"

