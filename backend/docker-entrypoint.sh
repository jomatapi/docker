#!/bin/sh
echo "Starting gunicorn..."
gunicorn -w 5 -b 0.0.0.0:9000 myapp:app
