#!/bin/bash

packages=(
    # Command line utils
    git
    curl
    terminator

    python-pip # Python package manager
)

sudo apt-get install -y ${packages[*]}

cd "../gitpr"
. "install.sh"
