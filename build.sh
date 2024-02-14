#!/bin/bash

set -ex

BR_VERSION=2023.11.1

echo $BR_VERSION

mkdir -p out
cp config out/.config

if [ ! -d "buildroot-$BR_VERSION" ]; then
    wget "https://buildroot.org/downloads/buildroot-$BR_VERSION.tar.gz"
    tar xf buildroot-$BR_VERSION.tar.gz
fi
cd "buildroot-$BR_VERSION"

make O=../out
