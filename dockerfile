# Use an official Node.js runtime as a parent image
FROM node:14-alpine as build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
FROM nginx:alpine
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
