FROM buildtools

RUN dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates:armhf \
    curl:armhf \
    jq \
    git \
    iputils-ping:armhf \
    libcurl3:armhf \
    libicu55:armhf \
    libunwind8:armhf \
    netcat \
    libc6:armhf \
    libstdc++6:armhf \
    openssl:armhf && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
