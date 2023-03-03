set -ex

##############################################################################
# Option 1: GCC
##############################################################################
source build_gcc/install/bin/bigdftvars.sh

bigdft -h
bigdft-tool -h
bader -h
python test.py

##############################################################################
# Option 2: Clang
##############################################################################
source build_clang/install/bin/bigdftvars.sh

bigdft -h
bigdft-tool -h
bader -h
python test.py

