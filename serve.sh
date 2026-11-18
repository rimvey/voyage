#!/usr/bin/env bash
# 워크벤치 정적 서버 실행: ./serve.sh [포트]  (기본 8000)
cd "$(dirname "$0")" || exit 1
PORT="${1:-8000}"
echo "http://localhost:${PORT}/index.html"
exec python3 -m http.server "$PORT" --bind 0.0.0.0
