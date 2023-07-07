#!/bin/bash
cd /home/app/

python manage.py migrate --noinput

python manage.py createsuperuser --username 'django_user' --email 'test@mail.com' --noinput || true

gunicorn --bind 0.0.0.0:8000 backend.wsgi