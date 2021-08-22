FROM node:14

WORKDIR /usr/src/app

COPY . .

EXPOSE 8000
CMD [ "node", "server.js" ]