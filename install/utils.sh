#!/bin/bash

START_DIR=$(pwd)
packages=(
    # Command line utils
    git
    curl
    terminator
    fish
    vim
)

sudo apt install -y ${packages[*]}

mkdir -p ~/scripts/bin

cd "../gitpr"
. "install.sh"
cd "../install"

cp "../gitbr/gitbr" ~/scripts/bin
cd "$START_DIR"
