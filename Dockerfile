FROM jenkins/jnlp-slave:alpine

ENV AWS_CLI_VERSION 1.16.140

USER root

RUN apk update && apk upgrade
RUN apk add --update nodejs nodejs-npm
RUN npm install -g @angular/cli

RUN apk add --no-cache python3 
	
RUN pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} 
