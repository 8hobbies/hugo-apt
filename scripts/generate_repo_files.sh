#!/bin/bash

# Generate Packages.gz and Release files.

set -e

cd _site
apt-ftparchive packages "${DIST_ROOT_DIR#*/}/main/binary-amd64" > "${DIST_ROOT_DIR#*/}/main/binary-amd64/Packages"
gzip -k --best "${DIST_ROOT_DIR#*/}/main/binary-amd64/Packages"

cd "../${DIST_ROOT_DIR}"

apt-ftparchive \
    -o APT::FTPArchive::Release::Origin="8 Hobbies" \
    -o APT::FTPArchive::Release::Suite="latest" \
    -o APT::FTPArchive::Release::Version="1.0" \
    -o APT::FTPArchive::Release::Architectures="amd64" \
    -o APT::FTPArchive::Release::Components="main" \
    release . > Release
