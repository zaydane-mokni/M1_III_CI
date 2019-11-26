
FROM node:dubnium
WORKDIR /app
COPY package*json
RUN yarn install
COPY . /app
EXPOSE 8080
CMD [ "node","server.js" ]
