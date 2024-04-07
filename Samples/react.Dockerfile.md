# A React UI within docker

The [react.Dockerfile](react.Dockerfile) contains a simple script for building a docker container from a React UI. 

_Note: This is using the development mode server, obviously if you're looking to just build and deploy the application to production using Nginx or the likes then we'd need to make some changes._

* Copy the [react.Dockerfile](react.Dockerfile) to your React client root folder
* Use can use this name, but I'll rename to Dockerfile
* From your CLI run 

```
docker build -t ReplaceWithImageTagName .
```

This file will copy your React files to the container and create the build

```
docker run -p 3000:3000 ReplaceWithImageTagName
```

This will show output from yarn. Add the _-d_ option, i.e.

```
docker run -d -p 3000:3000 ReplaceWithImageTagName
```
