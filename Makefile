install-python:
	pipenv sync

install-node:
	npm ci

collectstatic:
	pipenv run python manage.py collectstatic --noinput

prepare: install-python install-node collectstatic

migrate:
	pipenv run python manage.py migrate

runserver:
	pipenv run python manage.py runserver

run-gunicorn:
	pipenv run gunicorn webserver.wsgi

tailwind-run:
	npx tailwindcss -i ./static/src/input.css -o ./static/src/output.css --watch

local:
	make -j 2 tailwind-run runserver
.PHONY: local
