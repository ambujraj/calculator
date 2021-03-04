FROM python:3

WORKDIR /usr/src/app

COPY . .

cmd["python3","src/calculator.py"]