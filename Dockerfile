FROM mediawiki

# install missing stuff and php extensions
RUN apt-get update && apt-get install -y \
      vim \
      unzip \
      libzip-dev \
    && docker-php-ext-install zip

# install composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
RUN composer self-update --1
    
# update mediawiki extensions via composer
COPY composer.local.json .
RUN composer update --no-dev

# install timeless skin
RUN curl -o timeless-skin.tar.gz https://extdist.wmflabs.org/dist/skins/Timeless-REL1_35-c2b39e7.tar.gz
RUN tar -xzf timeless-skin.tar.gz -C /var/www/html/skins
