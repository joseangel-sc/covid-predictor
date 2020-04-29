FROM python:3.8.2-buster

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install git-all -y \
    && apt-get -y install gcc

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000
