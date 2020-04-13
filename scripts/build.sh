#!/bin/bash

set -euxo pipefail

TS_WHEEL=$(find /tmp -name "torchserve*.whl" -print0 | xargs -0 ls -1 -t | head -1)
pip install -U $TS_WHEEL
echo $TS_WHEEL
