FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive 

RUN apt-get update && apt-get install -y \
    software-properties-common

RUN add-apt-repository ppa:openjdk-r/ppa

RUN apt-get install -y \
    maven openjdk-15-jdk xvfb xorg openbox

ENV DISPLAY :99

WORKDIR /app

ADD ./test.sh /usr/local/bin/test-javafx