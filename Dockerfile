FROM ubuntu:14.04
RUN apt-get update &&\
apt-get install -y pkg-config libopenblas-dev liblapack-dev git-core build-essential gfortran python-dev curl libfreetype6-dev libjpeg-dev libhdf5-dev liblzo2-dev libbz2-dev
RUN curl https://bootstrap.pypa.io/get-pip.py | python
RUN pip install cython
RUN pip install numpy
RUN pip install six
RUN pip install pillow
RUN pip install scipy
RUN pip install scikit-image
RUN pip install scikit-learn
RUN pip install matplotlib
RUN pip install jupyter
RUN pip install h5py
RUN pip install pandas
RUN pip install tables
RUN pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.6.0-cp27-none-linux_x86_64.whl