# ER-Deployment

## Pull the submodules
To build the images, you have to pull the submodules first

```
$ git submodule update --init --recursive
```

## Building images
To run the docker-compose, you will need to **build the images first**

```
$ git submodule foreach "./gradlew build docker dockerTag -x test" 
```

## Run project
After building the images you can run the project with docker-compose. Run the following command to start the project.

```
$ docker-compose up -d
```

This will expose the following ports on the host machine
- 8081 for the  `account service`
- 8080 for the  `vehicle service`
