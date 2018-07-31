#!/bin/bash

bash configure --prefix=$PREFIX --disable-all-programs --enable-libuuid

make
make check
make install

rm -fr $PREFIX/share
