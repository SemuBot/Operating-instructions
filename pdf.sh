#!/bin/sh
# Markdown -> PDF: kramdoc (md -> adoc) then asciidoctor-pdf.
# Needs: gem install --user-install asciidoctor-pdf kramdown-asciidoc
# Usage: ./pdf.sh [file.md ...]   (default: README.md)
set -e
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
cd "$(dirname "$0")"
[ $# -eq 0 ] && set -- README.md
for md in "$@"; do
  adoc="${md%.md}.adoc"
  kramdoc -o "$adoc" "$md"
  asciidoctor-pdf -a toc -a imagesdir=. "$adoc"
  rm "$adoc"
  echo "wrote ${md%.md}.pdf"
done
