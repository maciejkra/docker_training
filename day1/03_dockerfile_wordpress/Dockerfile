FROM debian:8

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 php5 php5-mysql mysql-server && \
    apt-get clean && \
    rm -fr /var/lib/apt/lists/* && \
    a2enmod rewrite && \
    rm -R /var/www/html/*
ARG VER=4.6.1
ADD https://wordpress.org/wordpress-${VER}.tar.gz /
RUN tar zxfp /*.tar.gz -C /var/www/html/ --strip 1 && \
chown -R www-data:www-data /var/www/html/ && \
rm /*.tar.gz

EXPOSE 80
ENV DB_PASS=pass
ENV DB_NAME=wordpress
CMD service mysql start && mysqladmin -u root password "${DB_PASS}" && mysql -u root -p${DB_PASS} -e "create database ${DB_NAME}"  && /usr/sbin/apache2ctl -D FOREGROUND