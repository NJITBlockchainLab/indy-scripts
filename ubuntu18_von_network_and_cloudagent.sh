#!/bin/bash
sudo apt get update
#install git
sudo apt install -y git
#install pip
sudo apt install -y python3-pip
#upgrade pip
sudo -H pip3 install --upgrade pip
#install curl
sudo apt install -y curl
#install python virtual environment
sudo apt install python3-venv
#install docker
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce
#enable running without sudo
sudo groupadd docker
sudo usermod -aG docker ${USER}
newgrp docker
docker run hello-world
#install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
#upgrade docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose
sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
#clone the von-network repo
git clone https://github.com/bcgov/von-network.git
#make virtual env
python3 -m venv AriesEnv
source AriesEnv/bin/activate
#install wheel
pip install wheel
#install python3-indy
pip install python3-indy
#install dependencies and cloudagent
sudo apt-get install libjpeg-dev zlib1g-dev
pip install Pillow
pip install -U setuptools
pip install aries-cloudagent








