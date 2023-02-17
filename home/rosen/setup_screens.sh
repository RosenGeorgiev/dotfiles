#!/usr/bin/env bash

set -Eeuxo pipefail

xrandr --output VGA1 --auto --left-of LVDS1
xrandr --output LVDS1 --off
xrandr --output HDMI1 --auto --right-of VGA1 --primary
