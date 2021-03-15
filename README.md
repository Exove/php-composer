# php-composer

This is PHP container with Composer installed, and the dependencies it needs (patch, git).

This is part of the [Exove's Local-docker](https://github.com/Exove/local-docker) stack for PHP development (namely [Drupal](https://drupal.org) projects).

However, this can be used individually as well:

        $ docker run xoxoxo/php-composer:7.4-1.0 bash -c 'php -v; composer --version'
       PHP 7.4.16 (cli) (built: Mar  6 2021 04:31:10) ( NTS )
        Copyright (c) The PHP Group
        Zend Engine v3.4.0, Copyright (c) Zend Technologies
            with Zend OPcache v7.4.16, Copyright (c), by Zend Technologies
            with Xdebug v3.0.3, Copyright (c) 2002-2021, by Derick Rethans
        Composer version 2.0.11 2021-02-24 14:57:23

See <https://github.com/Exove/php-container/tree/7.4/>

There are versions with PHP 7.1 , PHP 7.2 and PHP 7.3.
