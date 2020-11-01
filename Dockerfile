FROM php:7.3-apache
LABEL maintainer="Zobair Qauomi <github.com/ZobiarQ>"

ENV HOME=/root
COPY entrypoint.sh /tmp
WORKDIR /tmp
RUN docker-php-ext-install mysqli \
    && apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip \
    && curl -fsSL https://code-server.dev/install.sh | sh \
    && chmod +x entrypoint.sh
EXPOSE 80
ENTRYPOINT ./entrypoint.sh