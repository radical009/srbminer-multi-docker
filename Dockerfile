FROM debian:stable-slim



RUN apt-get update && apt-get -y install wget xz-utils && \
    cd /opt && \
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.3.5/SRBMiner-Multi-2-3-5-Linux.tar.xz -O SRBMiner-Multi.tar.xz && \
    tar xf SRBMiner-Multi.tar.xz && \
    rm -rf /opt/SRBMiner-Multi.tar.xz && \
    mv /opt/SRBMiner-Multi-2-3-5/ /opt/SRBMiner-Multi/ && \
    apt-get -y purge xz-utils && \
    apt-get -y autoremove --purge && \
    apt-get -y clean && \
    apt-get -y autoclean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/SRBMiner-Multi/
COPY start_zergpool.sh .

RUN chmod +x start_zergpool.sh

EXPOSE 80

ENTRYPOINT ["./start_zergpool.sh"]
CMD ["--api-enable", "--api-port", "80", "--disable-auto-affinity", "--disable-gpu"]
