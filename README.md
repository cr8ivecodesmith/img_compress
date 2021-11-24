Image Compressor Utilities
==========================

This is a utility script for Ubuntu to install MozJPEG and OxiPNG
both of which are very powerful image compression utilities.

I personally use them to compress the images on my websites.

Tested only on Ubuntu 20.04.


## Installation

Note that OxiPNG is a Rust binary, hence it will also be installed.

```
git clone https://github.com/cr8ivecodesmith/img_compress.git
cd img_compress && ./setup.sh
```

You will then need to add `$HOME/.cargo/bin` to your system PATH to run
OxiPNG.


## Uninstall

Just run the included `uninstall.sh` script. It will not remove Rust though,
just the OxiPNG binary.


## Usage


**MozJPEG**

```
cjpeg ...
```

**OxiPNG**

```
oxipng ...
```
