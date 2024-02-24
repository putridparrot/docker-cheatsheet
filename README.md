# Docker

A list of useful commands, params etc. for the docker CLI

**Images and Image information** 

| Command | Description |
|---------|-------------|
| docker images | Lists the currently installed images |
| docker image ls | Lists the currently installed images |
| docker image prune | Remove unused/dangling images |
| docker image prune -a | Remove all unused/dangling images |
| docker image history <image-name> | Show's the history of a supplied image |
| docker rmi <image-name> | Remove an image |
| docker image rm <image> | Remove image from the machine by image id |
| docker image rm <tag> | Remove image from the machine by tag |

**Inspect Docker information**

| Command | Description |
|---------|-------------|
| docker inspect image <image-name> | Show's details of the image (inc. layers and meta data) |
| docker inspect <network> | Inspect the details of the network using id or name |


**Extended Build Capabilities** 

| Command | Description |
|---------|-------------|
| docker builder ls | List builder instances |

**Running Images** 

| Command | Description |
|---------|-------------|
| docker start <container-id> | Starts a container that's been previous run |
| docker stop <container-id> | Stops a container that's currently running (for terminates if not stopped in 10 secs) |
| docker kill <container-id> | Force terminates a container |
| docker start -a <container-id> | Starts a container that's been previous run output logs |
| docker exec -it <container-id> <command> | Execute command within the container's shell |
| docker exec -it <container-id> sh | Shell into the container |
| docker run <container-id> | Run a new container of an image |
| docker run --rm <container-id> | Run a new container of an image and remove it on exit |
| docker run -p <host-port>:<container-port> <container-id> | Run a new container of an image mapping the host port to one exposed in the container |
| docker run -e <env-varirable>=<value> | Run a new container of an image passing in an environment variable |
| docker run -e <env-varirable>=<value> | Run a new container of an image passing in an environment variable |


**Listing Containers**

| Command | Description |
|---------|-------------|
| docker ps | Lists the currently running containers |
| docker ps --all | List all containers that ran on this machine (-a is a shortcut) |
| docker ps --latest | List the last created container (-l is a shortcut) |

**Container Logs**

| Command | Description |
|---------|-------------|
| docker logs <containe-id> | Fetches the logs for the container |


**Volumes** 

| Command | Description |
|---------|-------------|
| docker volume ls | List all docker volumes |


**Docker networks** 

| Command | Description |
|---------|-------------|
| docker network create <name> | Create a docker network |
| docker network ls | List the available networks |


**Useful Commands** 

| Command | Description |
|---------|-------------|
| docker update --restart=no <container-name> | Stop a container from auto starting |


# Docker Compose

A list of useful commands, params etc. for the docker-compose CLI

| Command | Description |
|---------|-------------|
| docker-compose up | Brings up the images etc. from the docker-compose.yml file |
| docker-compose down | Brings up the images etc. from the docker-compose.yml file |
| docker-compose ps | Show running docker-compose instances |

[More](more-dockercompose.md)

# Dockerfile

Information about the Dockerfile instructions

| Command | Description |
|---------|-------------|
| FROM <base-image> | Supply the base image for our image to use |
| RUN <commands> | Supply the programs etc. you want to add to the base image |
| CMD ["<command>"] | Supply the command to start when the container starts |

**Using the Dockerfile**

| Command | Description |
|---------|-------------|
| docker build -t <tag-name>  . | Builds the supplied docker file named Dockerfile |
| docker build -t <tag-name> -f <docker-filename> . | Builds the supplied docker file with the tag name |

[More](more-dockerfile.md)