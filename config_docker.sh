#!/bin/bash

sudo apt update

sudo apt install -y docker.io

MARIADB_VERSION=latest
export DOMJUDGE_VERSION=7.1.0

sudo docker pull mariadb:$MARIADB_VERSION
sudo docker pull domjudge/domserver:$DOMJUDGE_VERSION
sudo docker pull domjudge/judgehost:$DOMJUDGE_VERSION
