#!/bin/sh

# please update following variables before use
# lingr configurations: http://lingr.com/developer
# trello configurations: 

sudo docker run -d -p 22 -p 80 -e "HUBOT_LINGR_BOT=bot_id" -e "HUBOT_LINGR_SECRET=secret" \
  -e "HUBOT_TRELLO_KEY=key" -e "HUBOT_TRELLO_TOKEN=token" -e "HUBOT_TRELLO_BOARD=board_id" \
  miurahr/hubot-lingr /usr/bin/hubot-runner

DPID=`sudo docker ps -q -l`
echo $DPID > /tmp/docker-hubot-lingr.pid
sudo mv /tmp/docker-hubot-lingr.pid /run/
