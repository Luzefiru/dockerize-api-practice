FROM node:16-alpine3.17

WORKDIR /usr/src/app

COPY --chown=node:node . .

RUN npm install

ENV NODE_ENV=production

USER node:node

CMD node app.js