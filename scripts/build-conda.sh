#!/bin/bash
set -euxo pipefail

DIST_BIN=/tmp
#pip wheel .
mkdir -p $DIST_BIN
cp ./torchserve*.whl $DIST_BIN

conda-build -c torch .
