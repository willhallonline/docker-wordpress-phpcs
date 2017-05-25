FROM php
MAINTAINER Will Hall "will@willhallonline.co.uk"

# Update image
RUN apt-get update -y

# Install Dependencies
RUN apt-get install -y \
    zip \
    unzip \
    git \
    patch

# Remove memory limit for PHP-CLI and set timezone
RUN echo "memory_limit = -1" > /usr/local/etc/php/conf.d/memory-limit.ini
RUN echo "date.timezone = UTC" >> /usr/local/etc/php/conf.d/date-timezone.ini

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/bin/composer
RUN chmod +x /usr/bin/composer

# Allow Composer to be run as root and set $PATH for Composer Executables
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH "$PATH:/root/.composer/vendor/bin"

# Install PHPCS
RUN composer global require squizlabs/php_codesniffer

# Retrieve WordPress Coding Standards
git clone -b master https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards.git /root/wpcs

# Set WordPress as default CodeSniffer Standard
RUN phpcs --config-set installed_paths /root/wpcs
RUN phpcs --config-set default_standard WordPress

WORKDIR /app

CMD ["phpcs"]
CMD ["phpcbf"]
