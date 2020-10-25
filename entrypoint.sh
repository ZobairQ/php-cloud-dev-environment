#!/bin/bash
set -e

echo "Installing Mysqli..";
docker-php-ext-install mysqli;

echo "Installing other libraries.."

apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip;

echo "Installing code-server... "

curl -fsSL https://code-server.dev/install.sh | sh

code-server --bind-addr 0.0.0.0:8080
