#!/bin/bash

set -e

latest_hugo_version=$(git ls-remote --tags --sort='v:refname' https://github.com/gohugoio/hugo | tail -1 | cut -d '/' -f 3)
mkdir -p "${DIST_ROOT_DIR}/main/binary-amd64"
wget -q -P "${DIST_ROOT_DIR}/main/binary-amd64" "https://github.com/gohugoio/hugo/releases/download/${latest_hugo_version}/hugo_extended_${latest_hugo_version:1}_linux-amd64.deb"
