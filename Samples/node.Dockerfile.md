# A Node server within docker

The [node.Dockerfile](node.Dockerfile) contains a simple script for building a container from a Node server app. 


* Copy the [node.Dockerfile](node.Dockerfile) to your Node app's root folder
* Use can use this name, but I'll rename to Dockerfile
* From your CLI run 

```
docker build -t ReplaceWithImageTagName .
```

This file will copy your files to the container and install dependencies etc.

```
docker run -p 8080:8080 ReplaceWithImageTagName
```

This will show output from yarn. Add the _-d_ option, i.e.

```
docker run -d -p 8080:8080 ReplaceWithImageTagName
```
