#!/bin/bash

# Generate Packages.gz and Release files.

cd ${DIST_ROOT_DIR}

cd main/binary-amd64
apt-ftparchive packages . | gzip --best -c > Packages.gz
cd ../..

apt-ftparchive release . > Release
