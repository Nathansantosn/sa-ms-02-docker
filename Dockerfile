FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev libzip-dev git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip mysqli \
    && a2enmod rewrite

RUN git clone --branch master https://github.com/osTicket/osTicket.git /var/www/html/osticket

RUN chown -R www-data:www-data /var/www/html/osticket

RUN cd /var/www/html/osticket/include && mv ost-sampleconfig.php ost-config.php

EXPOSE 80

CMD ["apache2-foreground"]
