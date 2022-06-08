#!/usr/bin/env bash

docker rm -f $(docker ps -q --filter="name=selenoid") > /dev/null 2>&1 || true

docker pull selenoid/chrome:latest
docker pull selenoid/chrome:101.0
docker pull selenoid/firefox:latest
docker pull selenoid/firefox:100.0
docker pull selenoid/opera:latest
docker pull selenoid/video-recorder:latest-release

docker-compose -f docker-compose.yml up -d