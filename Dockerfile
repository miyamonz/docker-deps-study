ARG WDIR=/docker-deps-study

FROM node:16-slim
WORKDIR /tmp
COPY package.json package-lock.json /tmp
RUN npm i

FROM node:16-slim
ARG WDIR
WORKDIR ${WDIR}
COPY --from=0 /tmp/node_modules ${WDIR}/node_modules
COPY . .

CMD ["npm", "start"]
