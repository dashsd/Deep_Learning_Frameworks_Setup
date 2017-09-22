# Assuming the current working directory is the home directory

# Create python virtual environment for Theano
virtualenv --system-site-packages --python=python3.4 theano

# Activate Theano environment
source activate ~/theano/bin/activate

# libgpuarray installation
git clone https://github.com/Theano/libgpuarray.git
cd ~/libgpuarray
mkdir Build
cd Build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j $(nproc)
sudo make install

# pygpu installation
# change to libgpuarray directory
cd ..
python setup.py build
python setup.py install
sudo ldconfig

# Theano (bleeding edge version) installation
pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

# Create Theano kernel for Jupyter Notebook
sudo ~/theano/bin/python -m ipykernel install --user --name theano --display-name="theano"

# Configure theano - ~/.theano.rc
echo -e "\n[global]\nfloatX = float32\n" >> ~/.theanorc
echo -e "\n[global]\ndevice = cuda\n" >> ~/.theanorc

echo -e "\n[blas]\nldflags = -lopenblas\n" >> ~/.theanorc

echo -e "\n[nvcc]\noptimizer_including = cudnn\n" >> ~/.theanorc
echo -e "\n[nvcc]\nfastmath = True\n" >> ~/.theanorc

echo -e "\n[cuda]\nroot = /usr/local/cuda-8.0\n" >> ~/.theanorc

# Deactivate Theano
deactivate