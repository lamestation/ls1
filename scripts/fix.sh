#!/bin/sh
set -e

for markdown in $@
do
    echo "doing $markdown"
    sed -i "$markdown" \
        -e 's/<span[^>]*>//g' \
        -e 's/<\/span[^>]*>//g' \
        -e '/^\s*Created by/d'
done
