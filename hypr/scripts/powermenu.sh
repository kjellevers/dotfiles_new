#!/bin/bash

# Power menu options
options="Shutdown\nRestart\nSuspend\nLock"

# Show menu with tofi and get selection
selected=$(echo -e "$options" | tofi --prompt-text ">")

# Execute based on selection
case $selected in
"Shutdown")
  systemctl poweroff
  ;;
"Restart")
  systemctl reboot
  ;;
"Suspend")
  systemctl suspend
  ;;
"Lock")
  hyprlock
  ;;
esac
