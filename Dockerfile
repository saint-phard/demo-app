FROM node:19.2-alpine

RUN mkdir -p /home/app

WORKDIR /home/app

COPY ./app /home/app

RUN npm install
RUN npm update

CMD [ "node", "/home/app/server.js" ] 