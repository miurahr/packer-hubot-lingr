#! /bin/bash

set -e

# add supervisor config file
mkdir -p /var/log/supervisor /etc/supervisor/conf.d

install /tmp/supervisor/* /etc/supervisor/conf.d/
install -m 755 /tmp/runner.sh /usr/bin/hubot-runner
