#!/bin/bash

# Generate Packages.gz and Release files.

cd ${DIST_ROOT_DIR}

cd main/binary-amd64
apt-ftparchive packages . > Packages
gzip -k --best Packages
cd ../..

apt-ftparchive release . > Release
