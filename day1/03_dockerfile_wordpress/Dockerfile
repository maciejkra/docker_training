FROM debian:8

LABEL maintainer="Jacek Placek placek@is2sexy4u.co"

EXPOSE 80

ENV DEBIAN_FRONTEND=noninteractive
ENV MYSQL_ROOT_PASS pass
ENV MYSQL_DB wordpress

RUN apt-get update && \
	apt-get install -y --no-install-recommends apache2 \
	php5 \
	php5-mysql \
	mysql-server \
	wget && \
	apt-get clean && \
	rm -fr /var/lib/apt/lists/* && \
	rm -R /var/www/html/* && \
	a2enmod rewrite

COPY templates /
RUN chmod +x /root/startup.sh

ARG WORDPRESS_VER=4.6.1

RUN wget --no-check-certificate https://wordpress.org/wordpress-${WORDPRESS_VER}.tar.gz && \
	tar zxfp /*.tar.gz -C /var/www/html/ --strip 1 && \
	chown -R www-data:www-data /var/www/html/ && \
	rm /*.tar.gz


CMD  service mysql start && \
	/root/startup.sh && \
	/usr/sbin/apache2ctl -D FOREGROUND
