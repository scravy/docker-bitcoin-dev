#!/bin/bash

NAME=${1:-bitcoin-dev}

docker start -ai ${NAME}

