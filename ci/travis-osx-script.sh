#!/bin/sh

set -ev

mkdir build && cd build
cmake .. -G"Unix Makefiles" -DCMAKE_PREFIX_PATH="`brew --prefix qt5`" -DCMAKE_BUILD_TYPE=Release -DEXTRA_TESTS=OFF
make -j4
make test
make package
