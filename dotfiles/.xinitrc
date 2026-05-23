#!/bin/bash
#exec > ~/.xinitrc-debug.log 2>&1
#set -x

#echo "=== ENVIRONMENT VARIABLES ==="
#env | grep -E -i 'display|xauth|session|run|path|home'

#echo "=== MAGIC COOKIE OWNERSHIP ==="
#ls -la ~/.Xauthority

#echo "=== MAGIC COOKIE CONTENTS ==="
#/usr/bin/xauth list

#echo "=== STARTING ICEWM ==="
#export XDG_RUNTIME_DIR=/tmp/xdg-runtime-$USER
#mkdir -p "$XDG_RUNTIME_DIR"
#chmod 700 "$XDG_RUNTIME_DIR"
#exec /usr/bin/icewm-session


# Enable logging for debugging
exec > ~/.xinitrc-debug.log 2>&1

# Source the antiX environment (this fixes the menus/paths)
[ -f /etc/profile ] && . /etc/profile
[ -f ~/.profile ] && . ~/.profile

# Set up the runtime directory
export XDG_RUNTIME_DIR=/tmp/xdg-runtime-$USER
mkdir -p "$XDG_RUNTIME_DIR"
chmod 700 "$XDG_RUNTIME_DIR"

# Launch IceWM WITH the antiX desktop wrapper
exec desktop-session icewm-session
