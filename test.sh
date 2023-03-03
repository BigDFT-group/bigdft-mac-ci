# Takes as an argument either gcc or clang

set -ex

source build_${1}/install/bin/bigdftvars.sh

bigdft -h
bigdft-tool -h
bader -h
python3 test.py

