FROM ubuntu:18.04
LABEL maintainer="Zobair Qauomi <github.com/ZobiarQ>"

ENV HOME=/root
WORKDIR /tmp
RUN apt-get update -y \
    && apt-get install -y php-mysqli \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y curl sudo \
    && curl -fsSL https://code-server.dev/install.sh | sh \
    && curl -sSLO https://github.com/shivammathur/php-builder/releases/latest/download/install.sh \
    && chmod a+x ./install.sh \
    && ./install.sh local 8.0 \
    && rm -rf /var/lib/apt/lists/* 


EXPOSE 80
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080"]
