#!/bin/bash

APP="app.py"
PORT=5000

echo "Stopping old Flask..."
pkill -f "$APP" || true

echo "Starting Flask..."
nohup venv/bin/python $APP --host=0.0.0.0 --port=$PORT > flask.log 2>&1 &

echo "Flask started on port $PORT"
