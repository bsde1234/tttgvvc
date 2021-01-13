FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN apt-get install -y\
    coreutils \
    bash \
    bzip2 \
    curl \
    gcc \
    g++ \
    libcurl4-openssl-dev \
    postgresql \
    postgresql-client \
    postgresql-server-dev-all \
    wget \
    python3 \
    python3-dev \
    python3-pip \
    git \
    mpv

RUN pip3 install --upgrade pip
RUN git clone https://github.com/ahirearyan2/Telegram_VC_Bot
RUN pip3 install -r requirements.txt
RUN pacmd move-sink-input
CMD ["bash","vc.sh"]
