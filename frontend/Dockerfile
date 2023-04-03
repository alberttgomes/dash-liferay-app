FROM node:16.20.0-alpine3.17

WORKDIR /frontend

COPY package.json .

RUN rm -rf dist/ \
  && npm install