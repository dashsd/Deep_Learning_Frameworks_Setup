# OpenBLAS installation
# uninstall libopenblas if installed using apt
sudo apt-get remove libopenblas-base

# download OpenBLAS from GitHub
git clone git://github.com/xianyi/OpenBLAS
cd ~/OpenBLAS/
make FC=gfortran -j $(nproc)
sudo make PREFIX=/usr/local/ install