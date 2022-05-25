#!/bin/bash
ROOT_DIR=/content
TRAIN_REPO_DIR=$ROOT_DIR/ai8x-training
SYNTHESIS_REPO_DIR=$ROOT_DIR/ai8x-synthesis
PYTHON_VERSION=python3.8

# start training
cd $TRAIN_REPO_DIR
source $TRAIN_REPO_DIR/venv-train/bin/activate
chmod +x ./scripts/train_mnist_extrasmall.sh
./scripts/train_mnist_extrasmall.sh
