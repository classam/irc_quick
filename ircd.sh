#!/bin/bash

docker stop inspircd
docker rm inspircd
docker run --name inspircd -p 6667:6667 -p 6697:6697 --log-opt tag=inspircd -v /home/classam/irc_quick/irc-conf:/inspircd/conf -v /home/classam/marquee.click/certs:/inspircd/certs -d inspircd/inspircd-docker
