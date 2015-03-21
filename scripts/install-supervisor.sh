#! /bin/bash
set -e

apt-get -y install supervisor
 
# add supervisor config file
mkdir -p /var/log/supervisor /etc/supervisor/conf.d

install /tmp/supervisor/sshd.conf /etc/supervisor/conf.d/
install /tmp/supervisor/hubot.conf /etc/supervisor/conf.d/
install -m 755 /tmp/supervisor/hubot-runner.sh /usr/bin/hubot-runner
