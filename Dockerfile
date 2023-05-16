FROM python:3.9-alpine3.18
LABEL maintainer="szymon.wais@gmail.com"


ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
COPY ./site /site

WORKDIR /site
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r requirements.txt && \
    adduser --disabled-password --no-create-home site



