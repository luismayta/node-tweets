FROM node:8.9.0

ARG env
ARG version

LABEL NAME node-tweets-node-$env
LABEL VERSION $version

COPY package.json /usr/src/package.json

WORKDIR /usr/src/
RUN npm i -g yarn
