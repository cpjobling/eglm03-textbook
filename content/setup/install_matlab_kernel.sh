#!/bin/bash

MATLAB_HOME=/Applications/MATLAB_R2019a.app
EGLM03=$HOME/dev/eglm03-textbook

# Set up for jupyter with rise and jupyter-book
cd $EGLM03
conda update conda
conda create -n eglm03 python=3.7 anaconda
conda activate eglm03
conda install -c conda-forge rise
pip install jupyter-book

# Set up Python-MATLAB bridge and matlab_kernel
cd $MATLAB_HOME/extern/engines/python
python setup.py install
pip install matlab_kernel
cd $EGLM03

# Save environment and exit eg-247-textbook
conda env export > environment.yml
conda deactivate
