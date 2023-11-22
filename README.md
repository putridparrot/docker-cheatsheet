# docker-cheatsheet

A list of useful commands, params etc. for the docker CLI

**Images and Image information** 

| Command | Description |
|---------|-------------|
| docker images | Lists the currently installed images |
| docker image ls | Lists the currently installed images |
| docker image prune | Remove unused/dangling images |
| docker image history <image-name> | Show's the history of a supplied image |

**Running Images** 

| Command | Description |
|---------|-------------|
| docker ps | Lists the currently running images |
| docker start <container-name> | Starts a container that's been previous run |
| docker stop <container-name> | Stops a container that's currently running |

**Volumes** 

| Command | Description |
|---------|-------------|
| docker volume ls | List all docker volumes |


**Docker networks** 

| Command | Description |
|---------|-------------|
| docker network create <name> | Create a docker network |


**Useful Commands** 

| Command | Description |
|---------|-------------|
| docker update --restart=no <container-name> | Stop a container from auto starting |


