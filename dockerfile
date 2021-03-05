FROM python:3

WORKDIR /usr/src/app

COPY . .

run python3 src/calculator.py