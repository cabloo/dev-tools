#!/bin/bash

# Install packages
packages=(
    # Command line utils
    git
    curl

    # Server
    mysql-server
    apache2

    # PHP
    php-pear
    php5
)

sudo apt-get install ${packages[*]}

# Add PHP Mess Detector
pear channel-discover pear.phpmd.org
pear channel-discover pear.pdepend.org
pear install --alldeps phpmd/PHP_PMD
