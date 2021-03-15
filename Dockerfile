FROM xoxoxo/php-container:7.3-1.3

# Composer must be able to patch packages, and clone git repositories.
RUN apk --no-cache add 'patch=~2.7' 'git>2.20'

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --version=2.0.11 --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && echo "export PATH=~/.composer/vendor/bin:\$PATH" >> ~/.bash_profile

RUN composer self-update
RUN php -v
RUN composer --version
