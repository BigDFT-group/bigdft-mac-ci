# Takes as an argument either gcc or clang

# Setup your computer
brew reinstall gcc
brew link --overwrite gcc
brew install lapack
brew install open-mpi
brew install automake
pip3 install numpy
pip3 install scipy
pip3 install setuptools

# Get BigDFT from Git
git clone https://gitlab.com/l_sim/bigdft-suite.git

# Build

# Build directory
mkdir build_${1}
cd build_${1}

# Autogen + build
python3 ../bigdft-suite/Installer.py -y autogen 
python3 ../bigdft-suite/Installer.py -y build \
         -f ../macos_${1}.rc 
cd ../

