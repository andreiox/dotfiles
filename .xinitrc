#!/bin/sh

# typematic delay and rate
xset r rate 250 30 &
xcompmgr &
dunst &

exec bspwm
