#!/usr/bin/env bash
# Comprueba que un APK de RE:OTAKU es el publicado: hash contra checksums.txt y, si hay apksigner, firma.
# Uso: ./tools/verify-apk.sh REOTAKU-2.1.19-QA.apk
set -u

apk="${1:-}"
if [ -z "$apk" ] || [ ! -f "$apk" ]; then
  echo "Uso: $0 <archivo.apk>" >&2
  exit 2
fi

here="$(cd "$(dirname "$0")/.." && pwd)"
name="$(basename "$apk")"
sums="$here/checksums.txt"

if command -v sha256sum >/dev/null 2>&1; then
  got="$(sha256sum "$apk" | cut -d' ' -f1)"
else
  got="$(shasum -a 256 "$apk" | cut -d' ' -f1)"
fi

want="$(awk -v f="$name" '$2 == f { print $1 }' "$sums" 2>/dev/null)"

echo "archivo : $name ($(wc -c < "$apk" | tr -d ' ') bytes)"
echo "sha256  : $got"

if [ -z "$want" ]; then
  echo "aviso   : $name no aparece en checksums.txt (¿versión no publicada?)"
  exit 3
fi

echo "esperado: $want"
if [ "$got" = "$want" ]; then
  echo "resultado: HASH CORRECTO"
else
  echo "resultado: NO COINCIDE — no instales este archivo"
  exit 1
fi

if command -v apksigner >/dev/null 2>&1; then
  echo "--- firma ---"
  apksigner verify --print-certs "$apk" | sed -n '1,4p'
else
  echo "nota: apksigner no está en el PATH; instala Android build-tools para ver el certificado"
fi
