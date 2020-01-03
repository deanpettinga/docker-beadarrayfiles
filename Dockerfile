FROM ubuntu:latest

# install unix dependencies
RUN apt-get update -y && \
    apt-get install git -y && \
    apt-get install wget -y && \
    apt-get install python2.7 -y && \
