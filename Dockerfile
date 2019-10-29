FROM node:10-alpine
RUN apk add --no-cache git tzdata
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["node", "index.js"]