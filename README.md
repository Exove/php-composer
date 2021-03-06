# php-composer

This is PHP container with Composer installed, and the dependencies it needs (patch, git).

This is part of the [Exove's Local-docker](https://github.com/Exove/local-docker) stack for PHP development (namely [Drupal](https://drupal.org) projects).

However, this can be used individually as well:

        $ docker run xoxoxo/php-composer:7.3-1.3 bash -c 'php -v; composer --version'
        PHP 7.3.27 (cli) (built: Mar  6 2021 05:59:52) ( NTS )
        Copyright (c) 1997-2018 The PHP Group
        Zend Engine v3.3.27, Copyright (c) 1998-2018 Zend Technologies
            with Zend OPcache v7.3.27, Copyright (c) 1999-2018, by Zend Technologies
            with Xdebug v3.0.3, Copyright (c) 2002-2021, by Derick Rethans
        Composer version 2.0.11 2021-02-24 14:57:23

See <https://github.com/Exove/php-container/tree/7.3/>

There are versions with PHP 7.1 , PHP 7.2 and PHP 7.4.
