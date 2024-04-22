#!/bin/sh

mkdir -p content && awk -f readme-in-static-site/riss.awk ../README.md > content/_index.md && hugo "$@"
