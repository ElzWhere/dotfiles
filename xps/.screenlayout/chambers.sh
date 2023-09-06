#!/bin/sh
#xrandr --output eDP-1 --mode 1920x1080 --pos 3840x452 --rotate normal --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off


xrandr --output DP-1 --primary --mode 3840x2160 --rotate normal --output eDP-1 --mode 1920x1080 --rotate normal --right-of HDMI-1
