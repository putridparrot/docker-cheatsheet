# Dockerfile

The Dockerfile is used to essentially script the building of our docker image. By default you'll often see a file named Dockerfile (no extension) for this, but you can ofcourse name your file what you want, you'll just need to specifiy it's name when building from it.

The Dockerfile has many options, see the [Dockerfile reference](https://docs.docker.com/reference/dockerfile/) for a full list.

The basic format is as follows

```
FROM: <BaseImageName>
COPY <FromSource> <ToContainer>
RUN <Commands>
CMD ["entrypoint"]
```

Let's see how this looks in a real world example

```
FROM node:21-alpine3.18
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 8080

CMD [ "node", "index.js" ]
```

What we're doing here is...

* Our _BaseImageName_ is a node image. 
* We then make a directory and set up permissions in our container. 
* Next we set the working directory 
* Then we copy the package.json and package-lock.json files to the container
* We ensure the application files are owned by the non-root _node_ user
* We can not run the _npm install_
* Now we copy the actual application code to the container
* We're going to need to allow access from the host to the application in the container in this case, hence we EXPOSE port 8080
* Finally we define the entry point to our application. In this case we run node against the index.js file. 

We may wish to ignore files that should not be included in the image, here we create a .dockerignore file just like .gitignore and list the files/folders to ignore.

Once we're happy with our Docker file we run

```
docker build -t <TagName> .
```

Where the tag name would be a name related to your image, for example _MyServer_.

To then run othe image once it's built just use

```
docker run -p 80:8080 MyServer
```

This runs the image with tag name _MyServer_ mappin the host port 80 to the container port 8080 (as exposed in the Dockerfile).
