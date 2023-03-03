echo "Hello World!"
git clone https://gitlab.com/l_sim/bigdft-suite.git
mkdir build
cd build
python ../bigdft-suite/Installer.py -y autogen 

brew install lapack
brew install open-mpi
which mpif90

