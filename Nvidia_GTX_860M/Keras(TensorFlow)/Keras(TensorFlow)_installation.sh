# Assuming the current working directory is the home directory

# Create python virtual environment for TensorFlow
virtualenv --system-site-packages --python=python3.4 keras(tensorflow)

# Download keras from GitHub
git clone https://github.com/fchollet/keras.git
cd ~/keras/

# Activate Keras(tensorflow) environment
soure activate ~/keras(tensorflow)/bin/activate

# Install Keras
python3 setup.py install

# Create Keras(tensorflow) kernel for Jupyter Notebook
sudo ~/keras/bin/python -m ipykernel install --user --name keras(tensorflow) --display-name=" keras(tensorflow)"

# Deactivate Keras
deactivate