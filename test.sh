set -ex

source build_${1}/install/bin/bigdftvars.sh

bigdft -h
bigdft-tool -h
bader -h
python test.py

