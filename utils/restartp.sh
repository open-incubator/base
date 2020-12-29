#!/bin/bash

echo "Stoping service ..."
sudo docker-compose stop
echo "Starting service ..."
sudo docker-compose start
echo "Done"
