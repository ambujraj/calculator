FROM node:12.16.1-alpine

# RUN apt-get update
# RUN apt-get install python3 -y
# RUN apt-get install awscli -y
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*
    
# WORKDIR /Users/jack/.aws

VOLUME ["/Users/jack/.aws"]