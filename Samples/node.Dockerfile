FROM node:21-alpine3.18

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
# change the port to whatever your node server uses
EXPOSE 8080

# Change index.js to your entry point
CMD [ "node", "index.js" ]
