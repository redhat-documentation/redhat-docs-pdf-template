#!/bin/bash

set -e

ASSEMBLY="$1"

asciidoctor-pdf "$ASSEMBLY" \
-a pdf-themesdir=pdf-assets \
-a pdf-theme=redhat \
-a toc-title="" \
-a doctype=book \
-a source-highlighter="rouge" \
-a rouge-style=github \
-a icons=image \
-a icontype=svg \
-a iconsdir="pdf-assets/icons"

echo ""
echo "Built $ASSEMBLY as PDF"