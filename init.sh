#!/bin/bash
echo 'export default "'$(./package.sh plugin | grep "Plugin ID:" | cut -d' ' -f 3)'";' > ./key.js
