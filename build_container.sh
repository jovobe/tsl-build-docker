#!/bin/bash

# install system deps
apt update
apt install -y cmake sudo git libgl1-mesa-dev libopenblas-dev build-essential xorg-dev libglu1-mesa-dev

./build_and_install_deps.sh
