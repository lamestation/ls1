#!/bin/bash
set -e

prefix="$1"
output="$2"

for html in *.html
do
    title="$(grep '<title>' "$html" \
        | sed 's/.*<title>\(.*\)<\/title>.*/\1/g')"
    slug="$(echo "$title" \
        | tr '[[:upper:]]' '[[:lower:]]' \
        | sed \
            -e 's/[_ :()]\+/-/g' \
            -e 's/^'$prefix'//g')"

    markdown="$output$slug.md" # $(echo "$html" | sed -e 's/\.html$/.md/g')"

    echo "rendering $markdown: '$title'"

    # generate header
    echo "+++" > "$markdown"
    echo "title = \"$title\"" >> "$markdown"
    echo "+++" >> "$markdown"

    # generate content
    pandoc -f html -t gfm --strip-comments "$html" \
        | sed \
            -e '/<!--/d' \
            -e '/<div/d' \
            -e '/<\/div/d' \
        | pandoc -f gfm -t gfm >> "$markdown"
done


