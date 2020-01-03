FROM ubuntu:latest

# install unix dependencies
RUN apt-get update -y && \
    apt-get install git -y && \
    apt-get install wget -y && \
    apt-get install python2.7 -y && \
    apt-get install python-numpy -y && \
    
    ln -s /usr/bin/python2.7 /usr/bin/python && \
    git clone https://Illumina/BeadArrayFiles && \
    python setup.py sdist && \
    python setup.py install
    
