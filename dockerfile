#FounzyWeb server  &&&& DEBIAN
#SUDO              2022            SERVERHU.EU

FROM debian:11
VOLUME [ "/data" ]
WORKDIR /data
ENV TZ=Europe/Budapest
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y && \
    apt install git wget -y && \
    cd /root && \
    git clone https://github.com/ItsMeSudo/FounzyWeb.git && \
    cd FounzyWeb && chmod +x * && \
    ./setup.sh

CMD startup; sleep infinity