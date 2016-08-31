#!/bin/bash
if [ -e key.js ]; then
  ./package.sh ./plugin ./keys/plugin.$(node -e 'console.log(require("./key.js"));').ppk
else
  echo "key.js does not exist. Please run ./bootstrap.sh"
fi
