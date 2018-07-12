#!/bin/bash

TF_TYPE="cpu" # Change to "gpu" for GPU support
TARGET_DIRECTORY='/usr/local'
curl -L \
 "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF_TYPE}-$(go env GOOS)-x86_64-1.9.0.tar.gz" |
sudo tar -C $TARGET_DIRECTORY -xz
ls -al libtensorflow*

go get github.com/tensorflow/tensorflow/tensorflow/go

