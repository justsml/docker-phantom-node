# Docker Build Server Base

#### Includes:

* Node v6.9
  * Webpack
  * Gulp
  * Less
  * Babel
* Docker 1.12.5
* Docker Compose 1.9.0
* Rancher Compose 0.12.1


# Commands

```sh
## To Publish a new release w/ ver label
./publish.sh v1.2.3

# OR Just Latest
docker build -t docker-phantom-node:latest .
docker tag docker-phantom-node:latest justsml/docker-phantom-node:latest
docker push justsml/docker-phantom-node

```

