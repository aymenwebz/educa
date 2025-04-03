#!/bin/bash
cd /opt/render/project/src
source /opt/render/project/src/env/educa/bin/activate
exec gunicorn --access-logfile - --workers 3 --bind unix:/opt/render/project/src/educa/educa.sock educa.wsgi:application
