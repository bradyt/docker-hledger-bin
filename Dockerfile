FROM bradyt/docker-hledger-install

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    libgmp10 \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.local/bin

COPY --from=0 /root/.local/bin/hledger* /root/.local/bin/

ENV PATH /root/.local/bin:$PATH
