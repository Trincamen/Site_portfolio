#!/usr/bin/env bash
# Uso: scripts/gerar-qr.sh https://url-final-do-site
set -euo pipefail
URL="${1:-https://estudio-lumen.pages.dev}"
cd "$(dirname "$0")/.."
mkdir -p qrcode
npx --yes qrcode@1.5.4 -t svg -m 4 -e H -o qrcode/qr.svg "$URL"
npx --yes qrcode@1.5.4 -t png -w 1200 -m 4 -e H -o qrcode/qr.png "$URL"
echo "QR gerado em qrcode/qr.svg e qrcode/qr.png para: $URL"
