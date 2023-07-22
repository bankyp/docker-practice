# This ia a sample using node.js to create an Image

#Use the 'node' official image, with the alpine 20.x ('node:20-alpine')
FROM alpine:3.18

ENV NODE_VERSION 16.20.1

WORKDIR /usr/src/app

COPY package.json package.json

RUN apk add --no-cache tini && npm cache clean --force

EXPOSE 80

CMD [ "node", "server.js" ]