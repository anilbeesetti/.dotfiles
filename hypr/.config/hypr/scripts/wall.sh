#!/bin/bash


wall_dir=~/.local/share/backgrounds/

if [ -z "$1" ]; then
    wall="$(find "$wall_dir" -type f -name "*.jpg" -o -name "*.png" | shuf -n1)"
else
    wall="$1"
fi

echo "$wall"

cp "$wall" ~/.local/share/bg.jpg
killall swaybg
swaybg -m fill -i ~/.local/share/bg.jpg &
