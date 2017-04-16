#!/usr/bin/env sh

curl -o docker-compose.yml \
  https://raw.githubusercontent.com/operable/cog/1.0.0/docker-compose.yml

curl -o docker-compose.common.yml \
  https://raw.githubusercontent.com/operable/cog/1.0.0/docker-compose.common.yml

curl -o docker-compose.override.yml \
  https://raw.githubusercontent.com/operable/cog/1.0.0/docker-compose.override.slack_example.yml
