# download qt4 dependency
sudo apt-get install libqt4-dev

# download CMake v3.7.2
wget https://cmake.org/files/v3.7/cmake-3.7.2.tar.gz
tar xzvf cmake-3.7.2.tar.gz
cd cmake-3.7.2

# generate ./configure
./bootstrap
./configure

# use the jobs flag to utilize all the cores of the CPUs for faster compilation
make -j $(nproc)
sudo make install

# validate CMake installation
cmake --version
