FROM resin/rpi-raspbian:jessie
MAINTAINER Martin Dilger <martin@effectivetrainings.de>

RUN apt-get update && \
    apt-get install build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev git-core
RUN apt-get install ttf-mscorefonts-installer

RUN git clone --recurse-submodules git://github.com/ariya/phantomjs.git && \
    cd /phantomjs && \
    git reset --hard 2.0.0
RUN ./build.py
