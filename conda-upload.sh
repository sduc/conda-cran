#!/bin/bash

PKG_NAME=$1
USER=sduc
PASSWORD=""

source ./setup-env.sh

anaconda login --username $USER --password $PASSWORD

./cran-all-packages.sh | head -n10 | xargs -I{} ./create_pkg.sh {}

