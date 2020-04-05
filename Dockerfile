FROM python:3.8.2-slim-buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git-all -y \

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --default-timeout=120 --trusted-host pypi.python.org --trusted-host files.pythonhosted.org

COPY . .

EXPOSE 8000
