#!/bin/sh
echo "Sprawdzanie aktualizacji"
sudo apt-get update

echo "Instalowanie potrzebnych pakietów"
sudo apt-get --no-install-recommends -y install git cmake libusb-1.0-0-dev libpulse-dev libx11-dev screen libtool autoconf automake libfftw3-dev qt5-default qtcreator build-essential

mkdir ~/src

echo "Instalacja multimon-ng z stqc"

cd ~/src

git clone https://github.com/sq5bpf/multimon-ng-stqc.git

cd ~/src/multimon-ng-stqc

mkdir build

cd build

qmake ../multimon-ng.pro

make

sudo make install

Echo "Zakończone!"
echo "Aby uruchomic wpisz w termianlu: multimon-ng -a sqtc"
