FROM node:21-alpine3.18

WORKDIR /app
COPY package*.json .
COPY yarn*.lock .
RUN yarn install
COPY . .
RUN yarn build 

# Change index.js to your entry point
CMD [ "yarn", "start" ]
