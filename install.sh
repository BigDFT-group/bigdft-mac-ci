echo "Hello World!"

# Brew dependencies
brew reinstall gcc
brew link --overwrite gcc
brew install lapack
brew install open-mpi
brew install automake

# Get from git
git clone https://gitlab.com/l_sim/bigdft-suite.git

# Build directory
mkdir build
cd build

# Autogen + build
python3 ../bigdft-suite/Installer.py -y autogen 
python3 ../bigdft-suite/Installer.py -y build \
         -f ../bigdft-suite/rcfiles/macos_gcc.rc 

cat config.log
