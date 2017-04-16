#!/usr/bin/env sh

#curl -o docker-compose.yml \
#  https://raw.githubusercontent.com/operable/cog/1.0.0/docker-compose.yml

#curl -o docker-compose.common.yml \
#  https://raw.githubusercontent.com/operable/cog/1.0.0/docker-compose.common.yml

#curl -o docker-compose.override.yml \
#  https://raw.githubusercontent.com/operable/cog/1.0.0/docker-compose.override.slack_example.yml
docker-compose run --rm start_dependencies
docker-compose up -d 

docker-compose exec cog bash -c 'cogctl user create rajasoun  --first-name="Raja" --last-name="Soundaramourty" --email="rajasoun@icloud.com" --password="secret"'
docker-compose exec cog bash -c 'cogctl chat-handle create rajasoun slack rajasoun'
