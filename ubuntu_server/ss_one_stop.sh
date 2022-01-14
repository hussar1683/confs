#!/usr/bin/env bash

set -e
set -u
set -x

cd /opt

apt-get install python-pip
pip install git+https://github.com/shadowsocks/shadowsocks.git@master

sudo ssserver -p port -k password -m aes-256-cfb --user nobody -d start
