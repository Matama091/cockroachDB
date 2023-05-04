FROM golang:1.20

ENV GO111MODULE on

RUN apt-get update && apt-get install -y net-tools iproute2 iputils-ping iperf3 nano tcpdump

RUN ip a