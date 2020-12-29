#!/bin/bash

echo "Stopping service ..."
sudo docker-compose stop

echo "Building service ..."
sudo docker-compose build

echo "Running service in background"
sudo docker-compose up -d

echo "Restarting service"
sudo docker-compose start
