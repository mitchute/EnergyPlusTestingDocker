FROM ubuntu:18.04 as base

MAINTAINER Matt Mitchell matt.mitchell@nrel.gov

ENV DEBIAN_FRONTEND=noninteractive

# install dependancies
RUN apt-get update && apt-get install -y \
    tzdata \
    gem \
    vim \
    git \
    cmake \
    g++ \
    gfortran \
    cmake-curses-gui \
    curl \
    python-pip \
    # texlive-full \
    valgrind \
    lcov \
    gcovr \
    xorg-dev \
    libgl1-mesa-dev \
    ccache \
    python3-dev \
    ruby \
    sudo

# install python/ruby stuff
RUN pip install boto beautifulsoup4 soupsieve
RUN gem install activesupport octokit

## Configure the bootdir
VOLUME /var/simdata/energyplus
WORKDIR /var/simdata/energyplus

## Entry Point
CMD [ "/bin/bash" ]
