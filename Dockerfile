ARG WDIR=/docker-deps-study
FROM node:16-slim
ARG WDIR

WORKDIR ${WDIR}
COPY package.json package-lock.json ${WDIR}
RUN npm i --production

COPY . ${WDIR}

CMD ["npm", "start"]
