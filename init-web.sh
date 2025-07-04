#!/usr/bin/env bash
set -e

cd /app
. .venv/bin/activate

# Option A: use Flask’s built-in server
exec python3 app.py

# Option B: for better production performance, use gunicorn:
# exec gunicorn app:app --bind 0.0.0.0:$PORT
