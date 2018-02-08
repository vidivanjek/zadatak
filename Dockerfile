FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y php7.0 libapache2-mod-php7.0 apache2
RUN mv /var/www/html/index.html /var/www/html/old_index.html

ADD ./*.php /var/www/html/

EXPOSE 80

CMD apachectl -D FOREGROUND
