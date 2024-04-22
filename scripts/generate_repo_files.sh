#!/bin/bash

# Generate Packages.gz and Release files.

cd ${DIST_ROOT_DIR}

cd main/binary-amd64
apt-ftparchive packages . > Packages
gzip -k --best Packages
cd ../..

apt-ftparchive \
    -o APT::FTPArchive::Release::Origin="8 Hobbies" \
    -o APT::FTPArchive::Release::Suite="latest" \
    -o APT::FTPArchive::Release::Version="1.0" \
    -o APT::FTPArchive::Release::Architectures="amd64" \
    -o APT::FTPArchive::Release::Components="main" \
    release . > Release
