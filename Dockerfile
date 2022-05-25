FROM node:latest

ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY ./package*.json .

RUN npm install -g yarn

RUN apt-get update

RUN apt-get install nano

RUN apt-get install git

RUN yarn install

RUN yarn global add nodemon

COPY . .

USER node

EXPOSE 3000

CMD ["nodemon", "server.js"]