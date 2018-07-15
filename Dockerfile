FROM python:3.7-stretch

ENV PYTHONUNBUFFERED 1
RUN apt-get update -y
RUN apt-get install -y mysql-client
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install -U pip
RUN pip install -Ur requirements.txt
