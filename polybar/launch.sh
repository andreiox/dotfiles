#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

tray_output=HDMI-A-0

# Launch Polybar, using default config location ~/.config/polybar/config
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  # display tray only on tray_output
  export MONITOR=$m
  export TRAY_POSITION=none
  if [[ $m == $tray_output ]]; then
    TRAY_POSITION=right
  fi

  polybar --reload mybar &
done

echo "Polybar launched..."
