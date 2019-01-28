#!/bin/bash

NAME=${1:-"bitcoin-dev"}

docker run \
    --name ${NAME} \
    -it \
    --privileged=true \
    -v ${HOME}/.ssh:/root/.ssh:ro \
    -v ${HOME}:/host:rw \
    julianfleischer/bitcoin-dev:ubuntu-18.04

