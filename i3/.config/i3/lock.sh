#!/usr/bin/env bash
MYSELF="$(readlink -f "$0")"
MYDIR="${MYSELF%/*}"
icon="${MYDIR}/wave-penguin-round.png"
tmpbg="/tmp/$USERNAME-screen.png"
rm -f "$tmpbg"

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
