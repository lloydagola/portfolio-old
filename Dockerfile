from node:latest

ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY ./package*.json .

RUN npm install

COPY . .

USER node

EXPOSE 3000

CMD ["npm" "start"]