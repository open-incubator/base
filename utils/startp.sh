#!/bin/bash

Git=$1
Directory=$2

if [ -d "projects" ]; then
	echo "Change directory to projects"
	cd projects
else
	echo "Creating projects directory"
	mkdir projects
	echo "Change directory to projects"
	cd projects
fi

echo "Cloning git repository $Git"
git clone $Git

echo "Change directory to $Directory"
cd $Directory

echo "Run docker-compose up -d"
sudo docker-compose up -d
