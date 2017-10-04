FROM debian:8

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 php5 php5-mysql mysql-server
RUN apt-get clean
RUN rm -fr /var/lib/apt/lists/*

RUN a2enmod rewrite

RUN rm -R /var/www/html/*
ADD https://wordpress.org/wordpress-4.6.1.tar.gz /
RUN tar zxfp /*.tar.gz -C /var/www/html/ --strip 1
RUN chown -R www-data:www-data /var/www/html/ 
RUN rm /*.tar.gz

EXPOSE 80

CMD find /var/lib/mysql -type f -exec touch {} \; && service mysql start && mysqladmin -u root password "pass" && mysql -u root -ppass -e "create database wordpress"  && /usr/sbin/apache2ctl -D FOREGROUND
