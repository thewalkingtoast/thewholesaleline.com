FROM wordpress:7.1-php8.2-apache

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

COPY wp-config-docker.php wp-config.php
