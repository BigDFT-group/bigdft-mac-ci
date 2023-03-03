
##############################################################################
# Setup your computer
##############################################################################
brew reinstall gcc
brew link --overwrite gcc
brew install lapack
brew install open-mpi
brew install automake

##############################################################################
# Get BigDFT from Git
##############################################################################
git clone https://gitlab.com/l_sim/bigdft-suite.git

##############################################################################
# Option 1: Build with GCC
##############################################################################

# Build directory
mkdir build_gcc
cd build_gcc

# Autogen + build
python3 ../bigdft-suite/Installer.py -y autogen 
python3 ../bigdft-suite/Installer.py -y build \
         -f ../macos_gcc.rc 
cd ../

##############################################################################
# Option 2: Build with Clang
##############################################################################

# Build directory
mkdir build_clang
cd build_clang

# Autogen + build
python3 ../bigdft-suite/Installer.py -y autogen 
python3 ../bigdft-suite/Installer.py -y build \
         -f ../macos_clang.rc 
cd ../

