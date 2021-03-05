FROM node:12.16.1-alpine

RUN apk add --no-cache \
        zip \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*


VOLUME ["/Users/jack/.aws"]