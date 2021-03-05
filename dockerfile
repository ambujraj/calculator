FROM oisupport/bashbrew:base

WORKDIR /usr/src/app

COPY . .

run python3 src/calculator.py