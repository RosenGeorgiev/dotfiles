#!/usr/bin/env bash

xautolock -detectsleep \
    -time 3 -locker "${HOME}/.config/i3/screen_lock_now.sh" \
    -notify 30 \
    -notifier "notify-send -t 29000 -- 'LOCKING screen in 30 seconds'"
