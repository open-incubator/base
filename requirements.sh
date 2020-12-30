#!/bin/bash

echo "Installation of docker:"
echo "Removing older versions..."
sudo apt-get remove docker docker-engine docker.io containerd runc

echo "Installing docker requirements..."
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "Adding's docker's official GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Adding docker repository..."
sudo add-apt-repository  "deb [arch=$ARCH] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "Last step..."
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
echo "Docker installed"

echo "Installation of docker-compose"
echo "Downloading docker-compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Applying executables permissions to the binary..."
sudo chmod +x /usr/local/bin/docker-compose

echo "Linking the binary..."
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "Docker-compose installed"

echo "All requirements installed"
