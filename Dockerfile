FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y -qq \
    software-properties-common \
    build-essential \
    vim \
    wget \
    curl \
    git \
    mercurial \
    python3 \
    htop \
    unzip \
    netcat \
    net-tools \
    iputils-ping \
    iproute2 \
    libtool \
    autotools-dev \
    automake \
    pkg-config \
    libssl-dev \
    libevent-dev \
    bsdmainutils \
    libboost-all-dev

RUN add-apt-repository -y ppa:bitcoin/bitcoin \
    && apt-get update

RUN apt-get install -y -qq \
    libdb4.8-dev \
    libdb4.8++-dev

ADD bashrc /root/.bashrc

ENTRYPOINT [ "/bin/bash" ]

