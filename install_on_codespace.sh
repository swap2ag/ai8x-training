#!/bin/bash
cd /workspaces/ai8x-training/
git submodule update --init

sudo apt-get install libsndfile1 -y
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.8 -y
python3.8 --version

sudo apt-get install python3.8-distutils -y

python3.8 -m pip install virtualenv
python3.8 -m virtualenv /workspaces/ai8x-training/venv
source /workspaces/ai8x-training/venv/bin/activate
python3.8 -m pip install -r requirements.txt

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
sudo update-alternatives  --set python /usr/bin/python3.8
