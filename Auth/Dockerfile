FROM node:10
RUN mkdir -p /src/app
WORKDIR /src/app
COPY package.json /src/app/package.json
RUN npm install
COPY . /src/app
EXPOSE 8080
EXPOSE 3306
CMD [ "npm", "start" ]