FROM xoxoxo/php-container:7.2-1.1

# Composer must be able to patch packages, and clone git repositories.
RUN apk --no-cache add 'patch=~2.7' 'git>2.20'

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php --version=1.9.0 --install-dir=/usr/local/bin --filename=composer \
    && echo "export PATH=~/.composer/vendor/bin:\$PATH" >> ~/.bash_profile \
