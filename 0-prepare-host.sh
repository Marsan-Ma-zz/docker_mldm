#!/bin/bash

# configure prerequisites
sudo apt-get update
sudo apt-get install --assume-yes wget

# install docker
wget -qO- https://get.docker.com/ | sh

# configure docker (i.e. force devicemapper and bind to localhost)
sudo ln -sf /usr/bin/docker /usr/local/bin/docker
sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker
#sudo sed -i 's|^#*DOCKER_OPTS.*$|DOCKER_OPTS="-H tcp://127.0.0.1:2375 -H unix:///var/run/docker.sock"|g' /etc/default/docker
sudo sed -i 's|^#*DOCKER_OPTS.*$|DOCKER_OPTS="-dns 8.8.8.8 -dns 8.8.4.4 -g /home/$(whoami)/workspace/dockers/images"|g' /etc/default/docker

# create docker group and add user
sudo groupadd docker
sudo usermod -aG docker $(whoami)

# install docker-compose (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-14-04)
sudo apt-get -y install python-pip
sudo pip install docker-compose
