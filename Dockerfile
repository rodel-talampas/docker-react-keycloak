FROM node:latest
WORKDIR /usr/app

COPY app/package.json /usr/app/.
COPY app/package-lock.json /usr/app/.

RUN npm install

COPY app/. /usr/app/.

RUN npm run build
