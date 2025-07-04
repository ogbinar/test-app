#!/usr/bin/env bash
set -e

cd /app
python3 -m venv .venv
. .venv/bin/activate
pip install --no-cache-dir -r requirements.txt
