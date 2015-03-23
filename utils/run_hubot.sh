#!/bin/sh

base=$(dirname $0)
. $base/hubot-lingr.cf

sudo docker run -d -p 22 -p 8080 -e "HUBOT_LINGR_BOT=${HUBOT_LINGR_BOT}" -e "HUBOT_LINGR_SECRET=${HUBOT_LINGR_SECRET}" \
  -e "HUBOT_TRELLO_KEY=${HUBOT_TRELLO_KEY}" -e "HUBOT_TRELLO_TOKEN=${HUBOT_TRELLO_TOKEN}" -e "HUBOT_TRELLO_BOARD=${HUBOT_TRELLO_BOARD}" \
  miurahr/hubot-lingr /usr/bin/hubot-runner

DPID=`sudo docker ps -q -l`
echo $DPID > /tmp/docker-hubot-lingr.pid
sudo mv /tmp/docker-hubot-lingr.pid /run/
