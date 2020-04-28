FROM python:3.8.2-slim-buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git-all -y d

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000
