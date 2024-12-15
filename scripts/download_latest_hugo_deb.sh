#!/bin/bash

set -e

latest_hugo_version=$(git ls-remote --tags --sort='v:refname' https://github.com/gohugoio/hugo | tail -1 | cut -d '/' -f 3)
if [[ $latest_hugo_version == "v0.139.5" ]]; then
    # 0.139.5 is a technical release, it doesn't change the binaries of 0.139.4.
    latest_hugo_version="v0.139.4"
fi

# Download checksum file
wget -q "https://github.com/gohugoio/hugo/releases/download/${latest_hugo_version}/hugo_${latest_hugo_version:1}_checksums.txt" -O checksums.txt

# Download each arch and verify checksum
for arch in amd64 arm64; do
    save_dir="${DIST_ROOT_DIR}/main/binary-${arch}"
    hugo_deb_file_name="hugo_extended_${latest_hugo_version:1}_linux-${arch}.deb"
    mkdir -p "${save_dir}"
    wget -q -P "${save_dir}" "https://github.com/gohugoio/hugo/releases/download/${latest_hugo_version}/${hugo_deb_file_name}"
    checksum_line="$(grep "${hugo_deb_file_name}" checksums.txt | cut -f 1 -d ' ') ${save_dir}/${hugo_deb_file_name}"
    echo $checksum_line
    sha256sum --check - <<< "$checksum_line"
done
