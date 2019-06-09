#!/bin/bash
pushd .
HPL=hpl-2.3
sudo apt install libopenblas-dev libatlas-base-dev libmpich-dev gfortran
wget https://netlib.sandia.gov/benchmark/hpl/${HPL}.tar.gz
tar -zxvf ${HPL}.tar.gz
cd $HPL
./configure && \
make && make install-strip
popd
