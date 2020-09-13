# pull official base image
FROM node:13.12.0-alpine
RUN apk add nano vim
# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
# ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY . ./
RUN npm install yarn --silent
RUN yarn
RUN npm install react-scripts@3.4.1 -g --silent
EXPOSE 3000
