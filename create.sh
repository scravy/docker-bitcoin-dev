#!/bin/bash

NAME=${1:-"bitcoin-dev"}

docker run \
    --name ${NAME} \
    -it \
    -v ${HOME}/.ssh:/root/.ssh:ro \
    julianfleischer/bitcoin-dev:ubuntu-18.04

