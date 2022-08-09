FROM debian:buster-slim
RUN apt update -y &&\
    apt install --no-install-recommends --yes wget ca-certificates &&\
    update-ca-certificates

RUN adduser user

RUN wget https://raw.githubusercontent.com/danvau7/symmetrical-potato/dev/assignment_1/SHA256SUMS.asc &&\
    wget https://raw.githubusercontent.com/danvau7/symmetrical-potato/dev/assignment_1/SHA256SUMS &&\
    wget https://github.com/danvau7/symmetrical-potato/raw/dev/assignment_1/bitcoin-22.0-x86_64-linux-gnu.tar.gz && \
    sha256sum --ignore-missing --check SHA256SUMS &&\
    tar -xf bitcoin-22.0-x86_64-linux-gnu.tar.gz

CMD ["su", "-", "user", "-c", "/bitcoin-22.0/bin/bitcoind"]