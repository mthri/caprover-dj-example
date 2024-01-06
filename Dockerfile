# pull official base image
FROM python:3.11-slim-buster

# set work directory
WORKDIR /usr/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY requirements.txt /usr/app
RUN pip install --no-cache-dir -r requirements.txt

ENV DEBUG=True

# copy project
COPY . /usr/app

# collecting static files
RUN python manage.py collectstatic --no-input

# run application
CMD ["gunicorn", "--bind", "0.0.0.0:8000","config.wsgi:application"]

EXPOSE 8000