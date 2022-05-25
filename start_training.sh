# start training
cd $TRAIN_REPO_DIR
source $TRAIN_REPO_DIR/venv-train/bin/activate
chmod +x ./scripts/train_mnist.sh
./scripts/train_mnist.sh
