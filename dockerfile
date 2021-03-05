FROM alpine:latest

WORKDIR /Users/jack/.aws

COPY . .

cmd brew install awscli
cmd brew install docker