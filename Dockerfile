
FROM node:dubnium
WORKDIR /app
DATABASE_URL=postgres://psqluer:psqlpassword@localhost:5432/psdb
COPY package*.json ./
COPY . /app
EXPOSE 8080
RUN yarn global add node-gyp && yarn install
RUN yarn start
