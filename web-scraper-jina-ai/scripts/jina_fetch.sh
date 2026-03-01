#!/bin/bash
# jina_fetch.sh — Fetch web content via Jina AI Reader
# Usage: ./jina_fetch.sh <url> [options]
#   Options:
#     --no-cache    Bypass cache
#     --links       Include links summary
#     --images      Include images summary
#     --selector    CSS selector to target specific content
#     --max-chars   Truncate output (default: no limit)

set -euo pipefail

URL="${1:?Usage: jina_fetch.sh <url> [--no-cache] [--links] [--images] [--selector <css>] [--max-chars <n>]}"
shift

HEADERS=(-H "Accept: text/markdown")
MAX_CHARS=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --no-cache) HEADERS+=(-H "X-No-Cache: true"); shift ;;
    --links) HEADERS+=(-H "X-With-Links-Summary: true"); shift ;;
    --images) HEADERS+=(-H "X-With-Images-Summary: true"); shift ;;
    --selector) HEADERS+=(-H "X-Target-Selector: $2"); shift 2 ;;
    --max-chars) MAX_CHARS="$2"; shift 2 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

RESULT=$(curl -sL "${HEADERS[@]}" "https://r.jina.ai/${URL}")

if [[ -n "$MAX_CHARS" ]]; then
  echo "$RESULT" | head -c "$MAX_CHARS"
else
  echo "$RESULT"
fi
