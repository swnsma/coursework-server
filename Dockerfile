FROM nimmis/apache-php7

RUN apt-get update && \
apt-get install -y php-memcache

EXPOSE 8080

COPY . /var/www/html/server

CMD ["php", "-f", "/var/www/html/server/server.php"]