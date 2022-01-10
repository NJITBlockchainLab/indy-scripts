#!/bin/bash

#update
sudo apt update

#install curl
sudo apt install curl
#install git
sudo apt install git

#add repository
sudo add-apt-repository ppa:deadsnakes/ppa

#install python3.6 and set as default for python3 command
sudo apt update
sudo apt install python3\.6
sudo apt install python3.6-dev
sudo apt install python3.6-venv
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py
sudo ln -s /usr/bin/python3.6 /usr/local/bin/python3
sudo ln -s /usr/local/bin/pip /usr/local/bin/pip3

#install docker
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyring$
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg$
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


#install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s$
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version


#clone the von-network repo
git clone https://github.com/bcgov/von-network.git


#install venv and make venv
sudo apt-get install python3.6-venv
python3.6 -m venv AriesEnv
source AriesEnv/bin/activate


#install cloudagent 
pip3.6 install aries-cloudagent
