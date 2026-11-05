#!/usr/bin/env bash
# Extrait le texte des PDF de docs/ vers docs/texte/ (nécessite pdftotext : brew install poppler).
set -euo pipefail
cd "$(dirname "$0")/.."
command -v pdftotext >/dev/null || { echo "pdftotext introuvable (brew install poppler)"; exit 1; }
mkdir -p docs/texte
for f in docs/*.pdf; do
  base="$(basename "$f" .pdf)"
  slug="$(printf '%s' "$base" | perl -CSD -MUnicode::Normalize -pe '$_ = NFD($_); s/\p{Mn}//g; s/[^A-Za-z0-9]+/-/g; s/^-|-$//g; $_ = lc($_)')"
  pdftotext -layout "$f" "docs/texte/${slug}.txt"
  echo "docs/texte/${slug}.txt"
done
