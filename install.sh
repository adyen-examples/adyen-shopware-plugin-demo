#!/bin/bash

if [[ -z ${APP_URL+x} ]] ; then
    echo "Expected environment variables not found. Please set the APP_URL environment variable."
    exit 5;
fi

# Setup domain
docker exec shopware bash -c "bin/console sales-channel:update:domain ${APP_URL}"

# Install Adyen Plugin 
docker exec shopware bash -c 'composer require adyen/adyen-shopware6'
docker exec shopware bash -c 'php bin/console plugin:refresh'
docker exec shopware bash -c 'php bin/console plugin:install AdyenPaymentShopware6 --activate'
docker exec shopware bash -c 'php bin/console cache:clear'

# Upgrade HTTP to HTTPS
CSP='Header set Content-Security-Policy "upgrade-insecure-requests"'
docker exec shopware bash -c "echo -e '\n${CSP}' >> /var/www/html/public/.htaccess"
