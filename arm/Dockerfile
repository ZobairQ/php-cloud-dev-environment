FROM navikey/raspbian-buster

RUN apt-get update \
    && wget https://nodejs.org/dist/v15.1.0/node-v15.1.0-linux-armv7l.tar.xz \ 
    && tar -xvf node-v15.1.0-linux-armv7l.tar.xz \ 
    && cd node-v15.1.0-linux-armv7l \ 
    && cp -R * /usr/local/ \
    && apt-get install apache2 -y \
    && chmod -R 777 /var/www/html \
    && apt-get install libapache2-mod-php -y \
    && curl -fsSL https://code-server.dev/install.sh | sh

EXPOSE 80
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080"]
