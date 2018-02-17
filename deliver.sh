#!/usr/bin/env bash

echo "Copying deployable files in app folder"
rm -rf $1
mkdir $1
cp docker-compose.yml $1/docker-compose.yml
cp Dockerfile $1/Dockerfile
cp update_docker_files.py $1/update_docker_files.py
cp reverse-proxy-infos.yml $1/reverse-proxy-infos.yml
echo "End copying deployable files in app folder"