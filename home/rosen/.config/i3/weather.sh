#!/bin/sh
# shell script to prepend i3status with weather

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
do
  read line
  temp=$(cat /tmp/.weather.cache | jq .current_condition[0].FeelsLikeC | tr -d '"')
  status=$(cat /tmp/.weather.cache | jq .current_condition[0].weatherDesc[0].value | tr -d '"')
  uv=$(cat /tmp/.weather.cache | jq .current_condition[0].uvIndex | tr -d '"')
  wind=$(cat /tmp/.weather.cache | jq .current_condition[0].windspeedKmph | tr -d '"')
  echo ",[{\"full_text\":\"Sofia - ${temp}C - ${status} - UV:${uv} - Wind:${wind} km/h\",\"color\":\"#00FF00\" },${line#,\[}" || exit 1
done)
