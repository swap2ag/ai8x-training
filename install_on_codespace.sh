#!/bin/bash
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7 -y
python3.7 --version

sudo apt-get install python3.7-distutils -y

python3.7 -m pip install virtualenv
python3.7 -m virtualenv /workspaces/ai8x-training/venv
source /workspaces/ai8x-training/venv/bin/activate
python3.7 -m pip install -r requirements.txt

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives  --set python /usr/bin/python3.7
