FROM jenkins/jnlp-slave:alpine

USER root

RUN apk update && apk upgrade
RUN apk add --update nodejs nodejs-npm
RUN npm install -g @angular/cli

RUN apk add --no-cache chromium@edge

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/
