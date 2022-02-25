#!/bin/bash
sudo apt install -y nodejs
sudo apt install -y npm

#upgrade
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install npm -g
