#!/bin/bash
if [ -e key.js ]; then
  ./package.sh ./plugin ./keys/plugin.$(cat ./key.js | cut -d' ' -f 3 | sed 's/[";]//g').ppk
else
  echo "key.js does not exist. Please run ./init.sh"
fi
