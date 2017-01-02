FROM mhart/alpine-node
MAINTAINER Luis Mayta <@slovacus>

ONBUILD RUN apk add --no-cache make gcc g++ python curl

RUN mkdir -p /app

COPY ./ /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
