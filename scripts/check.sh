#!/usr/bin/env bash
# Contrôles mécaniques avant rendu. Ne remplace pas la relecture humaine (voir AGENTS.md).
# Usage : scripts/check.sh
set -uo pipefail
cd "$(dirname "$0")/.."

fail=0
warn() { echo "⚠️  $*"; }
err()  { echo "❌ $*"; fail=1; }
ok()   { echo "✅ $*"; }

REG="rendus/registre-hypotheses.md"
[ -f "$REG" ] || { err "registre manquant : $REG"; exit 1; }

# 1. Les hypothèses citées dans les rendus existent dans le registre
declared="$(grep -oE '^\| *H[0-9]+ *\|' "$REG" | grep -oE 'H[0-9]+' | sort -u)"
cited="$(grep -rhoE '\bH[0-9]+\b' rendus --include='*.md' --exclude="$(basename "$REG")" 2>/dev/null | sort -u)"
missing=""
for h in $cited; do
  echo "$declared" | grep -qx "$h" || missing="$missing $h"
done
if [ -n "$missing" ]; then err "hypothèses citées mais absentes du registre :$missing"; else ok "références H… cohérentes avec le registre"; fi

# 2. Statuts valides
bad_status="$(awk -F'|' '/^\| *H[0-9]+ *\|/ { s=$7; gsub(/^ +| +$/,"",s); if (s!="ouverte" && s!="confirmée" && s!="tombée") print $2 " -> \"" s "\"" }' "$REG")"
if [ -n "$bad_status" ]; then err "statut invalide (ouverte/confirmée/tombée) :"; echo "$bad_status"; else ok "statuts du registre valides"; fi

# 3. Hypothèses tombées : doivent renvoyer à une entrée du journal (R<n>)
unlinked="$(awk -F'|' '/^\| *H[0-9]+ *\|/ { s=$7; gsub(/^ +| +$/,"",s); if (s=="tombée" && $0 !~ /R[0-9]/) print $2 }' "$REG")"
if [ -n "$unlinked" ]; then warn "hypothèses tombées sans renvoi à une entrée du journal (R…) :$unlinked"; else ok "hypothèses tombées reliées au journal"; fi

# 4. Une entrée de journal par sortie annoncée, nommée R<n>.md
if ls rendus/journal/R*.md >/dev/null 2>&1; then
  ok "journal : $(ls rendus/journal/R*.md | wc -l | tr -d ' ') entrée(s) -> $(ls rendus/journal | grep -E '^R[0-9]+\.md$' | tr '\n' ' ')"
else
  warn "aucune entrée dans rendus/journal/ (attendu : R0.md dès le rendu 1)"
fi

# 5. L2 : colonnes imposées dans l'ordre
L2_HEADER="Source|Propriétaire juridique|Responsable opérationnel|Mode d'accès|Fréquence|Volumétrie annuelle (calcul posé)|Donnée de santé (oui / non)|Qualité connue ou supposée|Justification (pièce, sortie ou hypothèse)"
for f in rendus/L2-inventaire/L2-v*.md; do
  [ -e "$f" ] || continue
  hdr="$(grep -m1 -E '^\| *Source *\|' "$f" | sed -E 's/^\| *//; s/ *\| *$//; s/ *\| */|/g')"
  [ "$hdr" = "$L2_HEADER" ] && ok "$f : colonnes conformes" || err "$f : colonnes non conformes à l'ordre imposé"
  rows="$(awk '/^\| *Source *\|/ {h=1; next} h && /^\|[- |]+\|$/ {next} h && /^\|/ {n++} h && !/^\|/ {exit} END {print n+0}' "$f")"
  [ "$rows" -ge 8 ] && ok "$f : $rows sources (≥ 8)" || err "$f : $rows source(s), 8 minimum"
done

# 6. L1 : pas de nom de technologie (liste indicative, à compléter)
TECH='Spark|Delta|Kafka|Databricks|Snowflake|Azure|AWS|GCP|Parquet|Airflow|dbt|Postgres|Hadoop|S3|Kubernetes|Docker'
for f in rendus/L1-cadrage/L1-v*.md; do
  [ -e "$f" ] || continue
  hits="$(grep -noE "\b($TECH)\b" "$f" | sort -u | tr '\n' ' ')"
  [ -z "$hits" ] && ok "$f : aucun nom de technologie détecté" || err "$f : technologie(s) citée(s) (interdit en L1) : $hits"
done

# 7. Marqueurs d'inachevé
todo="$(grep -rnE 'TODO|À COMPLÉTER|XXX|<n>|<x>' rendus --include='*.md' 2>/dev/null | grep -v '^rendus/registre' | head -5)"
[ -z "$todo" ] && ok "pas de marqueur d'inachevé" || { warn "marqueurs d'inachevé :"; echo "$todo"; }

echo
[ "$fail" -eq 0 ] && echo "Contrôles mécaniques OK (reste la relecture humaine)." || { echo "Des erreurs bloquantes sont à corriger."; exit 1; }
