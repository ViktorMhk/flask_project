#!/usr/bin/env bash

# install python3.9
apt-get install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y python3.9

# update alternatives
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
update-alternatives --install /usr/local/bin/python3 python3 /usr/local/bin/python3.9 2

# install other dev tools
apt-get install -y git python-dev

# install pip - latest version
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py

# install virtualenv
pip install virtualenv