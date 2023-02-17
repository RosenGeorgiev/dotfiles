#!/usr/bin/env bash

amixer -D pulse sset Master '5%-'
VOLUME=$(amixer sget Master | awk -F"[][]" '/Left|Mono:/ { print $2 }')
notify-send "Volume - ${VOLUME}"
