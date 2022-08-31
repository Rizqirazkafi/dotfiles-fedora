#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar example 2>&1 | tee -a /tmp/polybar.log & disown
EXTERNAL_MONITOR_NAME="HDMI-A-0"
STATUS_EXTERNAL_MONITOR=$(xrandr --query | grep $EXTERNAL_MONITOR_NAME)
if [[ ! $STATUS_EXTERNAL_MONITOR == *disconnected* ]]; then
    polybar right 2>&1 | tee -a /tmp/polybar1.log & disown
fi

echo "Polybar launched..."
