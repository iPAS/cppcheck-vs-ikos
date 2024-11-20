#!/bin/bash

build_type=Release
install_dir=/opt/ikos

[[ -d build ]] && trash build
mkdir build
cd build

echo ---------------------------------------------------------------
cmake \
    -DCMAKE_INSTALL_PREFIX="$install_dir" \
    -DCMAKE_BUILD_TYPE="$build_type" \
    -DLLVM_CONFIG_EXECUTABLE="/usr/lib/llvm-14/bin/llvm-config" \
    ..

echo ---------------------------------------------------------------
make -j $(nproc)

echo ---------------------------------------------------------------
make install
