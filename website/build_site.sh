#!/bin/bash

awk -f readme-in-static-site/riss.awk ../README.md > content/_index.md && hugo "$@"
