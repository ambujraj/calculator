FROM python:3

WORKDIR /usr/src/app

COPY . .

cmd["python3","-m","unittest", "tests/test_calculator.py"]