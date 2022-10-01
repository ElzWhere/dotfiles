#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config=$HOME/.config/polybar/config.ini main &


if [[ $(xrandr -q |grep 'HDMI-1 connected') ]]; then
	polybar --config=$HOME/.config/polybar/config.ini main_external &
fi 

#keeper
#polybar --config=$HOME/.config/polybar/config.ini main 2>&1 | tee -a /tmp/polybar1.log & disown

#polybar --config=$HOME/.config/polybar/config.ini main_external 2>&1 | tee -a /tmp/polybar2.log & disown
#polybar --config=$HOME/.config/polybar/config.ini bspwm-bar 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar stuffs 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar misc 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
