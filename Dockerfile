FROM debian:buster-slim
RUN apt update -y &&\
    apt install --no-install-recommends --yes wget ca-certificates &&\
    update-ca-certificates


RUN  https://bitcoin.org/bin/bitcoin-core-22.0/SHA256SUMS.asc &&\
    wget https://bitcoincore.org/bin/bitcoin-core-22.0/SHA256SUMS &&\
    wget https://bitcoincore.org/bin/bitcoin-core-22.0/bitcoin-22.0-x86_64-linux-gnu.tar.gz && \
    sha256sum --ignore-missing --check SHA256SUMS &&\
    tar -xf bitcoin-22.0-x86_64-linux-gnu.tar.gz

CMD ["/bitcoin-22.0/bin/bitcoind"]


