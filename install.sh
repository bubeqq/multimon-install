#!/bin/sh

sudo apt-get update

sudo apt-get --no-install-recommends -y install git cmake libusb-1.0-0-dev libpulse-dev libx11-dev screen qt4-qmake libtool autoconf automake libfftw3-dev qt4-default qt5-default qtcreator

mkdir ~/src

echo "Instalacja multimon-ng z stqc"

cd ~/src

git clone https://github.com/sq5bpf/multimon-ng-stqc.git

cd ~/src/multimonNG

mkdir build

cd build

qmake ../multimon-ng.pro

make

sudo make install

Echo "Zakończone!"
