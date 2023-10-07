# example-django-app

## Instructions

Make sure you have [pipenv](https://pipenv.pypa.io/en/latest/) installed in your system

1. Install dependencies with `make prepare-dev`
2. Run migrations with `make migrate`
3. Run the server with `make local`. This runs all processes required for local development (Django, tailwind-watch, etc)

## Features

- Whitenoise to serve static files in production
- Tailwind CSS + flowbite
- Django Debug Toolbar, Gunicorn
