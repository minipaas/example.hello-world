FROM ubuntu:13.10

RUN apt-get update && apt-get -y install apache2

ADD code /var/www

ENV minipaas_version 1

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]

