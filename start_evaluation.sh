#!/bin/bash
echo "Don't forget to give the path to the trained weights in the evaluate_*.sh scripts"
ROOT_DIR=/content
TRAIN_REPO_DIR=$ROOT_DIR/ai8x-training
SYNTHESIS_REPO_DIR=$ROOT_DIR/ai8x-synthesis
PYTHON_VERSION=python3.8

# start eval
cd $TRAIN_REPO_DIR
source $TRAIN_REPO_DIR/venv-train/bin/activate
chmod +x ./scripts/evaluate_mnist_extrasmall.sh
./scripts/evaluate_mnist_extrasmall.sh
