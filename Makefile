install:
	pipenv sync

run:
	pipenv run python manage.py runserver

migrate:
	pipenv run python manage.py migrate

collectstatic:
	pipenv run python manage.py collectstatic

tailwind-run:
	npx tailwindcss -i ./static/src/input.css -o ./static/src/output.css --watch

local:
	make -j 2 tailwind-run run
.PHONY: local
