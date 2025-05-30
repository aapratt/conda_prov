#!/bin/bash

cd $DATA_DIRECTORY
# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

# Download some useful files
wget -P ./ https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./anaconda3
source ./anaconda3/bin/activate
conda init --all
