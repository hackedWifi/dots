#!/usr/bin/env sh

# More info : https://github.com/jaagr/polybar/wiki

# Install the following applications for polybar and icons in polybar
# yaourt -S polybar nerd-fonts-complete

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -c ~/.config/spectrwm/spectrwm.bar left &
polybar -c ~/.config/spectrwm/spectrwm.bar center &
polybar -c ~/.config/spectrwm/spectrwm.bar right &
#for future scripts - how to find interface
#interface-name=$(ip route | grep '^default' | awk '{print $5}')
#interface-name=$(ifconfig -a | sed -n 's/^\([^ ]\+\).*/\1/p' | grep -Fvx -e lo:| sed 's/.$//')

