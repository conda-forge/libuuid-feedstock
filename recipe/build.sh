#!/bin/bash

bash configure --prefix=$PREFIX --disable-all-programs --enable-libuuid

make -j$CPU_COUNT
make tests
make install

rm -fr $PREFIX/share

# We can remove this when we start using the new conda-build.
find $PREFIX -name '*.la' -delete
