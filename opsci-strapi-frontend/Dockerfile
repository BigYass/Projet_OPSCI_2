FROM node:20-alpine
RUN apk update
WORKDIR /opt
COPY . .
RUN yarn install 
CMD ["yarn", "dev", "--host", "0.0.0.0"]
