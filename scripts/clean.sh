#!/bin/sh
set -e
find "$1" -name \*.md -type f -exec sed -e 's/\s*$//g' -i '{}' \;
