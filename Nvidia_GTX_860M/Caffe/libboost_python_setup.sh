# Python3.4 packages installation directory configuration
# since the python packages get installed to /usr/local/lib/python3.4/dist-packages, create a symlink for this directory at /usr/lib/python3.4/dist-packages
sudo ln -s /usr/local/lib/python3.4/dist-packages /urs/lib/python3.4/dist-packages

# Configure libboost-python for Python3.4
# create a symlink for libboost_python-py34.so for the libboost-python3 file not found error during Caffe compilation
# configure the python version as per requirements
cd /usr/lib/x86_64-linux-gnu/
ls -l | grep libboost_python
sudo ln -s libboost_python-py34.so libboost_python3.so
sudo ldconfig

