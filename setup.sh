#!/bin/bash


BASEDIR=$(pwd)

# Install dependencies
echo "-> Installing dependencies"
sudo apt update && sudo apt install -y \
    cmake autoconf automake libtool nasm make pkg-config rustc


# Clone and install MozJPEG from source
# Default location: /opt/mozjpeg
echo "-> Installing MozJPEG"
if [ -d /opt/mozjpeg ]; then
    echo "-> MozJPEG is already installed"
else
    git clone https://github.com/mozilla/mozjpeg.git
    cd mozjpeg
    mkdir build && cd build
    sudo cmake -G"Unix Makefiles" ../ && sudo make install
    sudo ln -sn /opt/mozjpeg/bin/cjpeg /usr/local/bin/cjpeg

    echo "-> Cleaning up"
    cd $BASEDIR && sudo rm -rf mozjpeg

    echo "You can now use MozJPEG with via the command: cjpeg"
fi


# Install OxiPNG
echo "-> Installing OxiPNG"
if [ -f $HOME/.cargo/bin/oxipng ]; then
    echo "-> OxiPNG is already installed"
    echo "Add $HOME/.cargo/bin to your PATH to be able to run the installed binaries."
else
    cargo install oxipng
    echo "You can now use OxiPNG via the command: oxipng"
    echo "Add $HOME/.cargo/bin to your PATH to be able to run the installed binaries."
fi


echo "-> Done"
