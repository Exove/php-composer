FROM xoxoxo/php-container:7.1-xdebug-1.1

# Composer must be able to patch packages, and clone git repositories.
RUN apk --no-cache add 'patch=~2.7' 'git=~2.20'

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --version=1.8.5 --install-dir=/usr/local/bin --filename=composer \
    && echo "export PATH=~/.composer/vendor/bin:\$PATH" >> ~/.bash_profile \
