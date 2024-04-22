#!/bin/bash

latest_hugo_version=$(git ls-remote --tags --sort='v:refname' https://github.com/gohugoio/hugo | tail -1 | cut -d '/' -f 3)
wget -q -P _site "https://github.com/gohugoio/hugo/releases/download/${latest_hugo_version}/hugo_extended_${latest_hugo_version:1}_linux-amd64.deb"
