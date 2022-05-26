#!/bin/sh
echo  "STARTING API server"

echo "Waiting for postgres..."

sleep 3

echo "PostgreSQL started"

python3 manage.py makemigrations
python3 manage.py migrate
exec "$@"