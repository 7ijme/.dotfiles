#! /bin/sh

dp=$(xrandr -q | grep '^DP-[0-9]-[0-9] connected' | sed -s 's/^\(DP-[0-9]-[0-9]\).*/\1/')

bspc wm -O eDP-1 $dp
bspc monitor eDP-1 -d 1 2 3
bspc monitor $dp -d 4 5 6
