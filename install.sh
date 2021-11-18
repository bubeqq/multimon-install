#!/bin/sh

# install :

# curl -o installer.sh https://gist.github.com/iNem0o/6346423/raw && chmod +x installer.sh && sudo ./installer.sh

sudo apt-get update

sudo apt-get --no-install-recommends -y install git cmake libusb-1.0-0-dev libpulse-dev libx11-dev screen qt4-qmake libtool autoconf automake libfftw3-dev

mkdir ~/src

echo "Installation de rtl_sdr"

cd ~/src

git clone git://git.osmocom.org/rtl-sdr.git

cd ~/src/rtl-sdr

mkdir build

cd build

cmake ../ -DINSTALL_UDEV_RULES=ON

make

sudo make install

sudo ldconfig

echo "Installation de multimon-ng"

cd ~/src

git clone https://github.com/EliasOenal/multimonNG.git

cd ~/src/multimonNG

mkdir build

cd build

qmake ../multimon-ng.pro

make

sudo make install

echo "Installation de Kalibrate"

cd ~/src

git clone https://github.com/asdil12/kalibrate-rtl.git

cd kalibrate-rtl

git checkout arm_memory

./bootstrap



make

sudo make install
