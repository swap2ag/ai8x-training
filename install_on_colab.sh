#!/bin/bash
ROOT_DIR=/content
TRAIN_REPO_DIR=$ROOT_DIR/ai8x-training
SYNTHESIS_REPO_DIR=$ROOT_DIR/ai8x-synthesis
PYTHON_VERSION=python3.8

cd $ROOT_DIR

# Below clone is not required as it is already cloned before running this bash script
# git clone https://github.com/swap2ag/ai8x-training --recurse-submodules
cd $TRAIN_REPO_DIR
git submodule update --init
cd $ROOT_DIR

git clone https://github.com/swap2ag/ai8x-synthesis --recurse-submodules

sudo apt install libsndfile1 -y
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo add-apt-repository universe
sudo apt update
sudo apt install python3-pip
sudo apt install $PYTHON_VERSION -y
sudo apt install $PYTHON_VERSION-distutils -y
$PYTHON_VERSION --version


$PYTHON_VERSION -m pip install virtualenv
$PYTHON_VERSION -m virtualenv $TRAIN_REPO_DIR/venv-train
source $TRAIN_REPO_DIR/venv-train/bin/activate
$PYTHON_VERSION -m pip install -r $TRAIN_REPO_DIR/requirements-cu11.txt

$PYTHON_VERSION -m virtualenv $SYNTHESIS_REPO_DIR/venv-synthesis
source $SYNTHESIS_REPO_DIR/venv-synthesis/bin/activate
$PYTHON_VERSION -m pip install -r $SYNTHESIS_REPO_DIR/requirements.txt

# train
cd $TRAIN_REPO_DIR
chmod +x ./scripts/train_mnist.sh
./scripts/train_mnist.sh

cd $ROOT_DIR
