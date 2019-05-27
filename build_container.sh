#!/bin/bash

# install system deps
apt update
apt install -y cmake python3-pip sudo git libgl1-mesa-dev

# install and setup conan
pip3 install conan

conan profile new default --detect
conan profile update settings.compiler.libcxx=libstdc++11 default
conan profile update settings.build_type=Release default
conan remote add conan-bintray https://api.bintray.com/conan/bincrafters/public-conan
conan remote add conan-community https://api.bintray.com/conan/conan-community/conan

./build_and_install_deps.sh

