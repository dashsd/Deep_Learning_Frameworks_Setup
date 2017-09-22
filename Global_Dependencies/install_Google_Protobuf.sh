# Check protoc version if installled
protoc --version

# Uninstall libprotobuf and protoc if installed using apt
sudo apt-get purge libprotobuf-dev libprotobuf-lite8 libprotoc8 protobuf-compiler
sudo -H pip3 uninstall protobuf

# Download protobuf from GitHub
git clone https://github.com/google/protobuf.git
cd ~/protobuf/

# Run autogen.sh to build ".configure" file
./autogen.sh
./configure
make -j $(nproc)
make check -j $(nproc)
sudo make install
sudo ldconfig

# Validate protobuf installation
protoc --version

# Install protobuf for Python
cd python/
python3 setup.py build
sudo python3 setup.py install