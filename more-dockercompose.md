# Docker Compose

Docker compose allows us to manage multiple containers using YAML. For example we might have a React application in one docker container, an ASP.NET core server application in another and a MongoDB instance in another container. Ofcourse, we can just create multiple unrelated containers via docker compose, but in this scenario we're probably having the ASP.NET server connect to MongoDB and the React application interacting with the ASP.NET server, so we are basically running up our application infrastructure (of sorts) via docker compose.

The docker compose file (often by default named) docker-compose.yml although the Docker website uses compose.yaml as their example. The file is (as the extension suggests) a YAML based file. 

The file takes the basic form

```
version: '3.8'

services:
   service-name1:
     # service definitions
   service-name2:
     # service definitions
```

_Note: Comments are denoted with the #_.

In this example we're listing that the file conforms to docker compose file version 3.8. We then have the _services_ section and within that we list each service that we want to run up along with the definitions/commands etc. to invoke on it.