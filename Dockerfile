FROM php:7.3-apache
LABEL maintainer="Zobair Qauomi <github.com/ZobiarQ>"

COPY entrypoint.sh /tmp
WORKDIR /tmp
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]