FROM debian:buster

COPY ./conf/setup.sh /tmp

RUN apt-get update && apt -y install curl wget netcat tar \
	&& apt -y install php php-fpm  php-mysql php-gd php-xml php-curl \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar && mv -f wp-cli.phar /usr/local/bin/wp \
	&& chmod +x /tmp/setup.sh

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN sed -i 's/^pid = \/run\/php\/php7\.3-fpm\.pid$/pid = \/var\/run\/php-fpm7.3.pid/' /etc/php/7.3/fpm/php-fpm.conf

CMD ["sh", "-c", "./tmp/setup.sh && /usr/sbin/php-fpm7.3 -F"]
