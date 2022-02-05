#!/bin/bash

#install rust
curl https://sh.rustup.rs -sSf | sh

#install nodejs package manager
sudo apt install npm

#install indy-sdk and its tools
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88
sudo add-apt-repository "deb https://repo.sovrin.org/sdk/deb bionic stable"
sudo apt-get update
sudo apt-get install -y libindy 
sudo apt-get install -y libnullpay
sudo apt-get install -y libvcx
sudo apt-get install -y indy-cli

