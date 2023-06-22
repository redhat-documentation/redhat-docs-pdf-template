#!/bin/bash

set -e

INPUT=("$@")

asciidoctor-pdf "${INPUT[@]}" \
-a pdf-themesdir=pdf-assets \
-a pdf-theme=redhat \
-a toc-title="" \
-a doctype=book \
-a revdate="$(date +'%Y-%m-%d')" \
-a source-highlighter="rouge" \
-a rouge-style=github \
-a icons=image \
-a icontype=svg \
-a iconsdir="pdf-assets/icons"

echo ""
echo "PDF built in current dir."