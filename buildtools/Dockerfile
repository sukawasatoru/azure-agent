FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    git \
    # rust-openssl
    libssl-dev \
    # rust-openssl
    pkg-config && \
    rm -rf /var/lib/apt/lists/*

ENV CARGO_HOME=/opt/cargo
ENV RUSTUP_HOME=/opt/rustup
ENV PATH=$CARGO_HOME/bin:$PATH
RUN set -o pipefail && \
    curl -sSf https://sh.rustup.rs | bash -s -- -v -y --no-modify-path && \
    if [[ $(dpkg --print-architecture) = arm64 ]]; then true; else rustup component add clippy; fi

ENV NVM_DIR=/opt/nvm
ARG NVM_VERSION
RUN set -o pipefail && \
    mkdir $NVM_DIR && \
    curl -sSf https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash -s && \
    source $NVM_DIR/nvm.sh && \
    nvm install node && \
    nvm use node
