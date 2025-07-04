#!/usr/bin/env bash
set -e
cd /app
. .venv/bin/activate
exec python3 app.py
