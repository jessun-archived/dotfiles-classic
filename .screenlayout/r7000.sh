#!/bin/sh
xrandr --output DP-2 --primary --mode 1920x1080 --rotate normal \
       --output DP-0 --mode 2560x1440 --above DP-2 --rotate normal \
       --output HDMI-0 --mode 1920x1080 --right-of DP-0  --rotate normal \
       --output DP-1 --off 
