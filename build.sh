#!/bin/bash
BUILD_DIR=$(realpath ${1:-build})
SCRIPT_PATH=${0%/*}

pushd $SCRIPT_PATH

mkdir -p $BUILD_DIR

# Copy keys to build dir
cp files/packer* $BUILD_DIR

packer build -var "build_dir=$BUILD_DIR" alpine-usb.json
packer build -var "build_dir=$BUILD_DIR" kvm-host.json
packer build -var "build_dir=$BUILD_DIR" kvm-guest.json

popd
