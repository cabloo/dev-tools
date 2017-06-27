#!/bin/bash

packages=(
    # Command line utils
    git
    curl
    terminator
    fish

    python-pip # Python package manager
)

sudo apt-get install -y ${packages[*]}
sudo pip install -y pyperclip

mkdir -p ~/scripts/bin

cd "../gitpr"
. "install.sh"
cd "../install"

cp "../gitbr/gitbr" ~/scripts/bin
