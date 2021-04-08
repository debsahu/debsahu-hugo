---
title: "Image Recognition Using Movidius Neural Compute Stick on a RPi0W"
date: 2018-05-27T00:00:00-05:00
tags: ["raspberry pi", "rtl-sdr", "MQTT", "Home Assistant", "IoT","machine learning", "compute stick", "movidius","opencv", "mobilessd", "YoLoV2", "image recognition", "camera"]
categories: ['iot']
---

{{<youtube 1q7SU6tp4Yk>}}

#

Let's build a security camera using Raspberry Pi Zero W and Movidius Neural Compute Stick to recognize a "person" on the video stream

## [GitHub: debsahu/PiCamMovidius](https://github.com/debsahu/PiCamMovidius)

### Set up NCSDK API

- Install required packages on Pi
```
sudo apt-get install -y libusb-1.0-0-dev libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler libatlas-base-dev git automake byacc lsb-release cmake libgflags-dev libgoogle-glog-dev liblmdb-dev swig3.0 graphviz libxslt-dev libxml2-dev gfortran python3-dev python-pip python3-pip python3-setuptools python3-markdown python3-pillow python3-yaml python3-pygraphviz python3-h5py python3-nose python3-lxml python3-matplotlib python3-numpy python3-protobuf python3-dateutil python3-skimage python3-scipy python3-six python3-networkx python3-tk libboost-python-dev
```
- Clone NCSDK
```
cd ~
git clone https://github.com/movidius/ncsdk
```
- Compile and install NCSDK’s API framework
```
cd ~/ncsdk/api/src
make
sudo make install
```
- Test installation using sample code from NC App Zoo
```
cd ~
git clone https://github.com/movidius/ncappzoo
cd ncappzoo/apps/hello_ncs_py
python3 hello_ncs.py
```
Output should look something like this:
```
Hello NCS! Device opened normally.
Goodbye NCS! Device closed normally.
NCS device working.
```

### Install Paho-MQTT

- Use pip3 to install Paho-MQTT
```
pip3 install paho-mqtt
sudo pip3 install paho-mqtt
```

### Using these examples

- Clone this code
```
cd ~
git clone https://github.com/debsahu/PiCamMovidius
```

#### Native MobileSSD

- Enter into following directory
```
cd ~/PiCamMovidius/native/picam
```
- Edit picam.py with appropiate MQTT server IP, port and topic and run python script
```
python3 picam.py
```

#### OpenCV 3.2 YoLoV2

- Install pre-compiled [OpenCV 3.2](https://yoursunny.com/t/2018/install-OpenCV3-PiZero/)
- Add to apt-source list 
```
echo 'deb [trusted=yes] http://dl.bintray.com/yoursunny/PiZero stretch-backports main' | sudo tee  /etc/apt/sources.list.d/bintray-yoursunny-PiZero.list
```
- Update apt 
```
sudo apt update
```
- Install OpenCV 
```
sudo apt install python3-opencv
```
- Verify Install 
```
python3 -c 'import cv2; print(cv2.__version__)'
```
- Enable V4L driver 
```
sudo modprobe bcm2835-v4l2
```
- Enter into following directory
```
cd ~/PiCamMovidius/ocv3
make
```
- Edit picam.py with appropiate MQTT server IP, port and topic and run python script
```
python3 picam.py
```