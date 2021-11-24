#!/bin/bash


# Uninstall MozJPEG
echo "-> Removing MozJPEG binaries"
if [ -d /opt/mozjpeg ]; then
    sudo rm -rfv /opt/mozjpeg
    sudo rm -v /usr/local/bin/cjpeg
else
    echo "-> MozJPEG is not installed"
fi


# Uninstall OxiPNG
echo "-> Uninstalling OxiPNG"
if [ -f $HOME/.cargo/bin/oxipng ]; then
    cargo uninstall oxipng
else
    echo "-> OxiPNG is not installed"
fi

echo "-> Done"
