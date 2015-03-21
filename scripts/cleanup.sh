#! /bin/bash
set -e

# clean apt caches
apt-get clean
rm -f /var/lib/apt/lists/*

rm -f /tmp/hubot
if [ -d /tmp/supervisor ]; then
  rm -f /tmp/supervisor
fi
