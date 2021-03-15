FROM xoxoxo/php-container:7.3-1.3

# Composer must be able to patch packages, and clone git repositories.
RUN apk --no-cache add 'patch=~2.7' 'git>2.20'

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'c31c1e292ad7be5f49291169c0ac8f683499edddcfd4e42232982d0fd193004208a58ff6f353fde0012d35fdd72bc394') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --version=2.0.4 --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && echo "export PATH=~/.composer/vendor/bin:\$PATH" >> ~/.bash_profile

RUN composer self-update
RUN php -v
RUN composer --version
