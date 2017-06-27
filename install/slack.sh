#!/usr/bin/env bash

cd /tmp
wget -O slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.3-amd64.deb
sudo dpkg -i slack.deb
sudo apt-get install -f
rm slack.deb
