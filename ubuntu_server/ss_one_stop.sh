#!/usr/bin/env bash

set -e
set -u
set -x

cd /opt

apt-get update -y
apt-get install -y vim git python-pip python-setuptools
pip install git+https://github.com/shadowsocks/shadowsocks.git@master

sudo ssserver -p port -k password -m aes-256-cfb --user nobody -d start
