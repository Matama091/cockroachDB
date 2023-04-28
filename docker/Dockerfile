FROM golang:1.20

ENV GO111MODULE on

RUN apt-get update && apt-get install -y net-tools iproute2 iputils-ping iperf3 nano tcpdump

RUN ip a

COPY startup.sh /startup.sh
RUN chmod 744 /startup.sh
CMD ["/startup.sh"]