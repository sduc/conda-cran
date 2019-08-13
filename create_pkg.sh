#!/bin/bash

PKG="$1"

echo =============== CREATE PACKAGE $PKG =========================

echo "CONDA SKELETON"
CONDA_PKG=$(conda skeleton cran "$PKG" | grep new_location | python -c "import sys;print(sys.stdin.read().split(' ')[-1])")
#CONDA_PKG=$(conda skeleton cran --use-noarch-generic "$PKG" | grep new_location | python -c "import sys;print(sys.stdin.read().split(' ')[-1])")
echo "CONDA BUILD"
dest="$(conda build "$CONDA_PKG" --output)"
echo $dest
conda build "$CONDA_PKG"
