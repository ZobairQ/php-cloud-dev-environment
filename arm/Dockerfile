FROM node:15.1.0-buster

RUN apt-get update \
    && apt-get install -y curl sudo \
    && apt-get install apache2 -y \
    && chmod -R 777 /var/www/html \
    && apt-get install libapache2-mod-php -y \
    && curl -fsSL https://code-server.dev/install.sh | sh

EXPOSE 80
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080"]
