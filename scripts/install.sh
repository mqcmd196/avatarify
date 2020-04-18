#!/usr/bin/env bash

source scripts/settings.sh

# v4l2loopback
sudo apt install v4l2loopback-dkms

# original env is conda
# source $(conda info --base)/etc/profile.d/conda.sh
# conda create -y -n $CONDA_ENV_NAME python=3.8
# conda activate $CONDA_ENV_NAME

sudo apt install virtualenv
source ./venv/bin/activate

pip3 install face-alignment pyfakewebcam

# FOMM
git clone https://github.com/alievk/first-order-model.git fomm
pip3 install -r fomm/requirements.txt
pip3 install requests

deactivate