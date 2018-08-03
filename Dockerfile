FROM ubuntu:16.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    emacs-nox \
    build-essential \
    libssl-dev sqlite3 \
    libsqlite3-dev \
    libevent-dev \
    g++ \
    libboost-dev \
    libevent-dev

RUN apt-get install -y coturn

ADD run.sh /root/run.sh

RUN ln -sf /dev/stdout /var/log/turn.log

CMD ["bash", "/root/run.sh"]
