FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=Etc/UTC


RUN apt update -y && apt upgrade -y && apt install -y \
    iproute2 \
    python-setuptools \
    hostname \
    inotify-tools \
    util-linux \
    jq \
    perl \
    supervisor \
    git \
    mc

RUN git clone  https://github.com/robbernabe/bomberman.git


WORKDIR /root

CMD ["sleep", "36000"]
