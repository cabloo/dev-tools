#!/bin/bash

packages=(
    # Command line utils
    git
    curl
    terminator

    python-pip # Python package manager
)

sudo apt-get install -y ${packages[*]}
sudo pip install -y pyperclip

cd "../gitpr"
. "install.sh"
