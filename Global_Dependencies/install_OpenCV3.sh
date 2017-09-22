# Install Dependencies for OpenCV
sudo apt-get install build-essential libgtk2.0-dev libavformat-dev libswscale-dev -y
sudo apt install doxygen

# Download OpenCV from GitHub
git clone https://github.com/opencv/opencv.git
cd ~/opencv/
mkdir build
cd build

# Build OpenCV with CMake
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D ENABLE_FAST_MATH=1 -D CUDA_FAST_MATH=1 -D WITH_CUBLAS=1 ..

# Using a single CPU core, it takes around 3 hours to compile
# So, use all the cores to speedup the compilation
# make -j $(($(nproc) + 1))
make -j $(nproc)
sudo make install

# Configure OpenCV
sudo touch /etc/ld.so.conf.d/opencv.conf
echo -e "/usr/local/lib" >> ~/etc/ld.so.conf.d/opencv.conf

sudo ldconfig

# Setup environment variable
sudo echo -e "\nexport PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH" >> ~/.bashrc
source ~/.bashrc
