#!/bin/bash
#SUDO                 2022              SERVERHU.EU

cd /root && \
    apt install -y nginx unzip wget curl git && \
    mkdir -p /tmp/sudo && \
    unlink /etc/nginx/sites-enabled/default && \
    cd /root/FounzyWeb && \
    sed -i 's/\r//' /root/FounzyWeb/gitclone && \
    sed -i 's/\r//' /root/FounzyWeb/permchk && \
    sed -i 's/\r//' /root/FounzyWeb/update && \
    sed -i 's/\r//' /root/FounzyWeb/startup && \
    mv /root/FounzyWeb/startup /usr/bin && \
    mv /root/FounzyWeb/gitclone /usr/bin && \
    mv /root/FounzyWeb/permchk /usr/bin && \
    mv /root/FounzyWeb/update /usr/bin && \
    mkdir /FounzyCONF && \
    mv /root/FounzyWeb/Founzy.conf /FounzyCONF && \
    mv /root/FounzyWeb/index.html /FounzyCONF && \
    rm dockerfile && \
    ln -s /FounzyCONF/Founzy.conf /etc/nginx/sites-available/Founzy.conf && \
    ln -s /FounzyCONF/Founzy.conf /etc/nginx/sites-enabled/Founzy.conf