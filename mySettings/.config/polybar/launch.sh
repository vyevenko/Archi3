#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log 
# polybar -c $HOME/.config/polybar/config_tray tray &
polybar -c $HOME/.config/polybar/config main &

echo "Polybar launched..."
