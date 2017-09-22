<h3>Changes made to "Makefile.config"</h3>
USE_CUDNN := 1
<br>OPENCV_VERSION := 3
<br>CUDA_DIR := /usr/local/cuda
<br>BLAS := open
<br>BLAS_INCLUDE := /usr/local/include
<br>BLAS_LIB := /usr/local/lib
<br>PYTHON_INCLUDE := /usr/include/python3.4 /usr/lib/python3/dist-packages/numpy/core/include
<br>PYTHON_LIBRARIES := boost_python3 python3.4m
<br>PYTHON_INCLUDE := /usr/include/python3.4m /usr/lib/python3/dist-packages/numpy/core/include
<br>PYTHON_LIB := /usr/lib /usr/lib/x86_64-linux-gnu
<br>WITH_PYTHON_LAYER := 1
<br>INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include
<br>LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib
<br># enable PKG_CONFIG to prevent 'can not find Atlas'
<br>USE_PKG_CONFIG := 1
<br>

<h3>Changes made to "Makefile"</h3>
LIBRARIES += glog gflags protobuf boost_system boost_filesystem m hdf5_hl hdf5 leveldb snappy opencv_core opencv_highgui opencv_imgproc opencv_imgcodecs
<br>PYTHON_LIBRARIES ?= boost_python python3.4