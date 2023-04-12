# Build arguments
ARG IMAGE
ARG APP_PATH=.

FROM $IMAGE

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

USER application

RUN composer install --no-ansi --no-interaction --no-progress --optimize-autoloader
