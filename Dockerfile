FROM jenkins/jnlp-slave:alpine

ENV CHROME_BIN="/usr/bin/chromium-browser"

USER root

RUN apk update && apk upgrade
RUN apk add --update nodejs nodejs-npm
RUN npm install -g @angular/cli
