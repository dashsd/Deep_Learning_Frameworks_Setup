# Assuming the current working directory is the home directory

# Create python virtual environment for TensorFlow
virtualenv --system-site-packages --python=python3.4 tensorflow-gpu

# Activate TensorFlow environment
source activate ~/tensorflow-gpu/bin/activate

# Install TensorFlow
#pip3 install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.1-cp34-cp34m-#linux_x86_64.whl

pip3 install --upgrade tensorflow-gpu

# Create TensorFlow kernel for Jupyter Notebook
sudo ~/tensorflow-gpu/bin/python -m ipykernel install --user --name tensorflow-gpu --display-name="tensorflow-gpu"

# Deactivate TensorFlow
deactivate
