FROM node:14-alpine
WORKDIR /usr/src/app
COPY package.json ./ 
COPY package-lock.json ./
RUN npm install --slient
RUN npm install react-scripts@3.4.1 -g --silent
COPY . ./
EXPOSE 3000
CMD [ "npm", "start" ]
