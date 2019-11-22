FROM python:3.7-alpine
MAINTAINER Geekings

ENV PYTHONUNBUFFERED 1

ADD ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
ADD ./app /app

RUN adduser -D nour
USER nour