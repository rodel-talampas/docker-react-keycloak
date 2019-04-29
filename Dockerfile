FROM node:latest

WORKDIR /usr/app

COPY app/package.json .
COPY app/package-lock.json .

RUN npm install --quiet

COPY . .
