#!/bin/sh
# shell script to prepend i3status with weather

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
do
  read line
  temp=$(cat /tmp/.weather.cache)
  status="ass"
  echo ",[{\"full_text\":\"Sofia@${temp}@${status}\",\"color\":\"#00FF00\" },${line#,\[}" || exit 1
done)
