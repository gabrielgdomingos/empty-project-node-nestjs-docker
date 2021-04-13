FROM node:14.15.4-alpine3.12

RUN apk update

RUN apk upgrade

RUN apk add --no-cache bash

RUN apk add --no-cache git

RUN npm install -g @nestjs/cli

USER node

WORKDIR /home/node/app

COPY . .