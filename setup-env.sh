#!/bin/bash

echo ============ INIT ENV ====================

#wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O miniconda.sh;
#bash miniconda.sh -b -p $HOME/miniconda
#export PATH="$HOME/miniconda/bin:$PATH"
#hash -r
#conda update -q conda

conda install conda-build anaconda-client CacheControl lockfile

conda config --set anaconda_upload yes

