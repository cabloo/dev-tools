#!/bin/bash

# Install packages
packages=(
    # Server
    mysql-server
    apache2

    # PHP
    php-pear # php package manager (for phpmd)
    php5
    php5-dev # needed for phpize for pear plugins
)

sudo apt-get install -y ${packages[*]}

# Add PHP Mess Detector
sudo pear channel-discover pear.phpmd.org
sudo pear channel-discover pear.pdepend.org
sudo pear install --alldeps phpmd/PHP_PMD
