FROM xoxoxo/php-container:7.3-1.2

# Composer must be able to patch packages, and clone git repositories.
RUN apk --no-cache add 'patch=~2.7' 'git>2.20'

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --version=1.9.1 --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && echo "export PATH=~/.composer/vendor/bin:\$PATH" >> ~/.bash_profile

RUN php -v
