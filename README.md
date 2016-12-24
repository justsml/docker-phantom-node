# Docker NodeJS & PhantomJS Server Base

## Why?

General base image for

* automating `phantomjs` tasks/scripts
* pixel-diff phantomjs 'screenshots' in your tests
* build environment for nodejs/webpack/gulp/grunt/etc
* continuous integration tasks/services
* inherit from `justsml/docker-phantom-node` base image to customize services/scripts/deployments however you need.

## Usage/Examples

```sh
# check for latest
docker pull justsml/docker-phantom-node:latest

## Run this interactively
docker run -v `pwd`:/app --name node-phantom -it --rm justsml/docker-phantom-node:latest bash

## Run this w/ vol-mounted build script (automatically picked up from /app/gulpfile.js)
docker run -v `pwd`:/app --name node-phantom -it --rm justsml/docker-phantom-node:latest "gulp"

## Run this w/ vol-mounted tape test
docker run -v `pwd`:/app --name node-phantom -it --rm justsml/docker-phantom-node:latest "tape 'test*/**.test.js' | tap-summary"

## Run this w/ vol-mounted npm test script
docker run -v `pwd`:/app --name node-phantom -it --rm justsml/docker-phantom-node:latest "npm test"

## PhantomJS Runner (one off)
docker run -v `pwd`:/app --name phantom-run -it --rm justsml/docker-phantom-node:latest "./phantomjs-2.1.1 --help"
```


### Includes:

* PhantomJS (2 versions in path
  * `phantomjs-2.1.1`
  * phantomjs (points to `phantomjs-2.0.0.1-pdf-links` my custom build fixing pdf links)
* Node v6.9
  * Webpack
  * Gulp
  * Babel
* Docker 1.12.5
* Docker Compose 1.9.0
* Rancher Compose 0.12.1



-----------------------------



### Contributing/Publishing/Admin

```sh
## To Publish a new release w/ ver label
./publish.sh v1.2.3

# OR Just Latest
docker build -t docker-phantom-node:latest .
docker tag docker-phantom-node:latest justsml/docker-phantom-node:latest
docker push justsml/docker-phantom-node

```

