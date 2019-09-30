#!/usr/bin/env sh

## Add this to your wm startup file

# Terminate already running conky instances
killall -q conky

# Wait until the process(es) have been shut down
while pgrep -u $UID -x conky >/dev/null; do sleep 1; done

# Launch Conky
#conky ~/.config/conky/conky.conf &

conky ~/.config/conky/conky.conf &
