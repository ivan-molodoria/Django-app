FROM divio/django-cms-preview
EXPOSE 8000:8000
COPY ./app /app
WORKDIR /app
ENTRYPOINT python manage.py runserver 0.0.0.0:8000

