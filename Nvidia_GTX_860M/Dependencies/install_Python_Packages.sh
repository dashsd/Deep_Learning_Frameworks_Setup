# Ubuntu 14.04
# Python 3.4 Configuration

# install pip
wget -o https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo apt-get install python3-pip -y

# upgrade pip
sudo -H pip3 install --upgrade pip

# check pip3 version
pip3 --version

# install python packages
sudo -H pip3 install -r python_packages.txt
