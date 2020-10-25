FROM php:7.3-apache
LABEL maintainer="Zobair Qauomi <github.com/ZobiarQ>"

ENV HOME=/root
COPY entrypoint.sh /tmp
WORKDIR /tmp
RUN chmod +x entrypoint.sh
EXPOSE 80
ENTRYPOINT ./entrypoint.sh