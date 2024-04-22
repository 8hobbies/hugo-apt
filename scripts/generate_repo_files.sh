#!/bin/bash

# Generate Packages.gz and Release files.

set -e

cd _site
for arch in amd64 arm64; do
    apt-ftparchive packages "${DIST_ROOT_DIR#*/}/main/binary-${arch}" > "${DIST_ROOT_DIR#*/}/main/binary-${arch}/Packages"
    gzip -k --best "${DIST_ROOT_DIR#*/}/main/binary-${arch}/Packages"
done

cd "${DIST_ROOT_DIR#*/}"

apt-ftparchive \
    -o APT::FTPArchive::Release::Origin="8 Hobbies" \
    -o APT::FTPArchive::Release::Suite="latest" \
    -o APT::FTPArchive::Release::Version="1.0" \
    -o APT::FTPArchive::Release::Architectures="amd64,arm64" \
    -o APT::FTPArchive::Release::Components="main" \
    release . > Release
