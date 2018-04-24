#!/bin/bash

docker stop inspircd
docker rm inspircd
sudo docker run \
    --name inspircd \
    -p 6667:6667 \
    -p 6697:6697 \
    --log-opt tag=inspircd \
    -v /home/classam/irc_quick/irc-conf:/inspircd/conf \
    -v /etc/letsencrypt/archive/hexhelloworld.com:/inspircd/certs \
    -d inspircd/inspircd-docker
