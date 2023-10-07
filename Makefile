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

tailwind:
	npx tailwindcss -i ./static/src/input.css -o ./static/css/output.css

run-gunicorn: tailwind
	pipenv run gunicorn webserver.wsgi

tailwind-watch:
	npx tailwindcss -i ./static/src/input.css -o ./static/css/output.css --watch

.PHONY: local
local:
	make -j 2 tailwind-watch runserver
