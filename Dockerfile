FROM ubuntu:18.04

# Do not exclude man pages & other documentation
RUN rm /etc/dpkg/dpkg.cfg.d/excludes
# Reinstall all currently installed packages in order to get the man pages back
RUN apt-get update && \
    dpkg -l | grep ^ii | cut -d' ' -f3 | xargs apt-get install -y --reinstall

RUN apt-get install -y -qq \
    man \
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

