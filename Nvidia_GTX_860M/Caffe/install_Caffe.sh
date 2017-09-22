# Assuming the current working directory is the home directory

# Create python virtual environment for Caffe
virtualenv --system-site-packages --python=python3.4 caffe

# Download Caffe from GitHub
git clone https://github.com/BVLC/caffe.git
cd ~caffe/

# Copy the modified "Makefile.config" file
cp ~/Deep-Learning-Frameworks-Comparison/Setup/Nvidia_GTX_860M/Caffe/Makefile.config Makefile.config

# Backup the current Makefile and copy the modified "Makefile"
mv Makefile Makefile.backup
cp ~/Deep-Learning-Frameworks-Comparison/Setup/Nvidia_GTX_860M/Caffe/Makefile Makefile

# Build Caffe
make all -j $(nproc)

# Check if Caffe is working
make test -j $(nproc)
make runtest -j $(nproc)

# Activate Caffe environment
source activate ~/caffe/bin/activate

# Install pycaffe
make pycaffe -j $(nproc)

# Setup environment variable for Caffe
sudo echo -e "\nPYTHONPATH=~/caffe/python:$PYTHONPATH" >> ~/.bashrc
source ~/.bashrc

# Deactivate Caffe
deactivate