#!/bin/bash

# 
cd /workspace/
# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

# Download some useful files
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/anaconda3
sudo source ~/anaconda3/bin/activate
conda init --all
