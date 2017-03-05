#!/bin/bash

docker run -it --rm \
    -v "$PWD":/opt/project \
    -v "$HOME/.composer:$HOME/.composer" \
    -w /opt/project -u $UID:${GROUPS[0]} \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/group:/etc/group:ro \
    -v /tmp:/tmp \
    -v "$HOME/.ssh:$HOME/.ssh" \
    -v "$HOME/.keys:$HOME/.keys:ro"  `linkContainer` \
    -e TZ=${TZ} \
    byjg/php56:alpine phpunit -d error_reporting=6143 "$@"
