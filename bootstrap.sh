#!/bin/bash
echo 'module.exports = "'$(./package.sh plugin | grep "Plugin ID:" | cut -d' ' -f 3)'";' > ./key.js
