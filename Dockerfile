FROM mhart/alpine-node
MAINTAINER Luis Mayta <@slovacus>

ONBUILD RUN apk add --no-cache make gcc g++ python

RUN mkdir -p /app
WORKDIR /app

COPY ./ /app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
