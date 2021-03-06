#!/usr/bin/env bash

dockerMachineWarning

xhost +SI:localuser:root
docker run  -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    --device /dev/dri \
    -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
    -v `adjustLocalDirectories $HOME/.rdm /root/.rdm` \
    --name redis-desktop-manager `linkContainer` \
    benoitg/redis-desktop-manager
xhost -SI:localuser:root


