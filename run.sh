#!/bin/bash

git submodule update
git submodule foreach git pull origin master
docker-compose down
docker-compose build
git submodule foreach './gradlew build docker dockerTag || :' 
docker-compose up -d
