rm -r antora
mkdir -p antora/modules/main/pages
kramdoc mdbook/src/SUMMARY.md -o antora/modules/main/nav.adoc
replace '.adoc' '.md.adoc' antora/modules/main/nav.adoc

cd mdbook/src

# https://matthewsetter.com/technical-documentation/asciidoc/convert-markdown-to-asciidoc-with-kramdoc/

find ./ -name "*.md" \
    -type f | xargs -I @@ \
    bash -c 'kramdoc \
        --format=GFM \
        --wrap=ventilate \
        --output=@@.adoc @@';

cd ../../ 

mv mdbook/src/*.adoc antora/modules/main/pages

