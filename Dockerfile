# This ia a sample using node.js to create an Image

#Use the 'node' official image, with the alpine 20.x ('node:20-alpine')
FROM node:16-alpine

EXPOSE 3000

RUN apk add --no-cache tini

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm install && npm cache clean --force

COPY . .

CMD [ "/sbin/tini", "--", "node", "./bin/www" ]