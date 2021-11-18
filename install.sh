#!/bin/sh

sudo apt-get update

sudo apt-get --no-install-recommends -y install git cmake libusb-1.0-0-dev libpulse-dev libx11-dev screen qt4-qmake libtool autoconf automake libfftw3-dev

mkdir ~/src

echo "Instalacja multimon-ng z stqc"

cd ~/src

git clone https://github.com/EliasOenal/multimonNG.git

cd ~/src/multimonNG

mkdir build

cd build

qmake ../multimon-ng.pro

make

sudo make install
