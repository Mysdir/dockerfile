FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

RUN curl -fsSL https://code-server.dev/install.sh | sh
