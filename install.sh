#!/usr/bin

# Required for google-chrome-stable
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Install packages
sudo apt-get update
sudo apt-get install git curl msyql-server apache2 php5 google-chrome-stable

# Install atom
atom_tmp="/tmp/atom.deb"
atom_url="https://atom.io/download/deb"
curl -L "$atom_url" -o "$atom_tmp"
sudo dpkg -i "$atom_tmp"
sudo apt-get -f install # Force install atom (with dependencies)
rm "$atom_tmp"
