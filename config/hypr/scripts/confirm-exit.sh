#!/bin/bash

choice=$(echo -e "c: cancel\nr: restart\ns: shutdown\nq: quit hyprland" | wofi --dmenu --prompt "What do you want to do?" --width 300 --height 200 --style ~/.config/wofi/style-quit.css)

case "$choice" in
    "q: quit hyprland")
        hyprctl dispatch exit
        ;;
    "r: restart")
        systemctl reboot
        ;;
    "s: shutdown")
        systemctl poweroff
        ;;
    *)
        # Cancel or closed window
        exit 0
        ;;
esac

