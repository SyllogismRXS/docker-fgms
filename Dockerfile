###############################################################################
# Build and run the Flight Gear Multiplayer Server
###############################################################################
FROM ubuntu:16.04

MAINTAINER Kevin DeMarco

RUN apt-get update && \
    apt-get install -y build-essential git cmake

WORKDIR /root

RUN git clone https://github.com/FlightGear/fgms.git
RUN mkdir -p ./fgms/build
WORKDIR ./fgms/build
RUN cmake .. && make

COPY fgms.conf ./fgms.conf

ENTRYPOINT ["/root/fgms/build/fgms"]
