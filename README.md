# Docker

A list of useful commands, params etc. for the docker CLI

**Images and Image information** 

| Command | Description |
|---------|-------------|
| docker images | Lists the currently installed images |
| docker image ls | Lists the currently installed images |
| docker image prune | Remove unused/dangling images |
| docker image prune -a | Remove all unused/dangling images |
| docker image history &lt;image-name&gt; | Show's the history of a supplied image |
| docker rmi &lt;image-name&gt; | Remove an image |
| docker image rm &lt;image&gt; | Remove image from the machine by image id |
| docker image rm &lt;tag&gt; | Remove image from the machine by tag |

**Inspect Docker information**

| Command | Description |
|---------|-------------|
| docker inspect image &lt;image-name&gt; | Show's details of the image (inc. layers and meta data) |
| docker inspect &lt;network&gt; | Inspect the details of the network using id or name |


**Extended Build Capabilities** 

| Command | Description |
|---------|-------------|
| docker builder ls | List builder instances |

**Running Images** 

| Command | Description |
|---------|-------------|
| docker start &lt;container-id&gt; | Starts a container that's been previous run |
| docker stop &lt;container-id&gt; | Stops a container that's currently running (for terminates if not stopped in 10 secs) |
| docker kill &lt;container-id&gt; | Force terminates a container |
| docker start -a &lt;container-id&gt; | Starts a container that's been previous run output logs |
| docker exec -it &lt;container-id&gt; &lt;command&gt; | Execute command within the container's shell |
| docker exec -it &lt;container-id&gt; sh | Shell into the container |
| docker run &lt;container-id&gt; | Run a new container of an image |
| docker run --rm &lt;container-id&gt; | Run a new container of an image and remove it on exit |
| docker run -p &lt;host-port&gt;:&lt;container-port&gt; &lt;container-id&gt; | Run a new container of an image mapping the host port to one exposed in the container |
| docker run -e &lt;env-varirable&gt;=&lt;value&gt; | Run a new container of an image passing in an environment variable |
| docker run -e &lt;env-varirable&gt;=&lt;value&gt; | Run a new container of an image passing in an environment variable |


**Listing Containers**

| Command | Description |
|---------|-------------|
| docker ps | Lists the currently running containers |
| docker ps --all | List all containers that ran on this machine (-a is a shortcut) |
| docker ps --latest | List the last created container (-l is a shortcut) |

**Container Logs**

| Command | Description |
|---------|-------------|
| docker logs &lt;container-id&gt; | Fetches the logs for the container |


**Volumes** 

| Command | Description |
|---------|-------------|
| docker volume ls | List all docker volumes |


**Docker networks** 

| Command | Description |
|---------|-------------|
| docker network create &lt;name&gt; | Create a docker network |
| docker network ls | List the available networks |


**Useful Commands** 

| Command | Description |
|---------|-------------|
| docker update --restart=no &lt;container-name&gt; | Stop a container from auto starting |


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
| FROM &lt;base-image&gt; | Supply the base image for our image to use |
| RUN &lt;commands&gt; | Supply the programs etc. you want to add to the base image |
| CMD ["&lt;command&gt;"] | Supply the command to start when the container starts |

**Using the Dockerfile**

| Command | Description |
|---------|-------------|
| docker build -t &lt;tag-name&gt;  . | Builds the supplied docker file named Dockerfile |
| docker build -t &lt;tag-name&gt; -f &lt;docker-filename&gt; . | Builds the supplied docker file with the tag name |

[More](more-dockerfile.md)