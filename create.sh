#!/bin/bash

docker run \
    --name bitcoin-dev \
    -it \
    -v ${HOME}/.ssh:/root/.ssh:ro \
    julianfleischer/bitcoin-dev:ubuntu-18.04

