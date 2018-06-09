#!/bin/bash
if [ -z $(which mosquitto_sub) ]; then
  >&2 echo "error: it seems mosquitto_sub is not installed!"
  exit 1
fi
while IFS= read -r line ; do
    ./command.sh "$line"
done < <(mosquitto_sub $@)