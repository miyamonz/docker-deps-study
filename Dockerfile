FROM node:16-slim

WORKDIR /app
COPY package.json package-lock.json /app
RUN npm i --production

COPY . /app

CMD ["npm", "start"]
