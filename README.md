# ER-Deployment

## Run the project
If it is your first time running this deployment repository, run this in your terminal
```
$ git submodule update --init
```

Simply run the following command in the terminal (Bash/Powershell)
```
$ ./run.sh
```

## Exposed services
This will expose the following ports on the host machine
- 8080 for the  `vehicle service`
- 8081 for the  `account service`
- 8082 for the `trip service`
- 8083 for the `trip consumer`
To see if a service is up and running you can check the `/actuator/health` page



## Databases
This wil also start 3 MySQL servers, they can be accesed by the following connection string

| Port | Database   | Username | Password
| ---- | --------   | -------- | -------
| 3307 | account-db | root     | accounts
| 3308 | vehicle-db | root     | accounts
| 3309 | trip-db    | root     | accounts

## RabbitMQ
The management console is accesable from http://localhost:15672. There will be a queue named `Proftaak` and the routing key is `abc.a`. This will be created during runtime.

| Username | Password |
| -------- | -------- |
| guest    | guest    |

## Grafana

Grafana is also exposed to the host system. The service is available through port `3000` and using the following credentials

| Username | Password
| -------- | --------
| admin    | admin

### Logs
If you want to see logs of the docker-compose you can run the following command

```
$ docker-compose logs -f
```
This will follow the logs and you can detach with `ctrl-z`

If you are only interested in the logs of a specific service you can run
```
$ docker-compose logs -f <service>
```

## Developing / Debugging locally
To work on a service locally and be able to debug it, clone the respective repository and open it in your prefered IDE.

First stop the deployed service in the docker network (`<service-name>` is the name of the service in the `docker-compose.yml` file)
```
$ docker-compose stop <service-name>
```
After that make sure you've got mysql running on the host machine that exposes 3306 with a database called `er-sols`, this is because the services run under a different profile when they're not in the docker network. If you do not have MySQL running you could achieve so with the following command. (root password MUST be 'password')
```
docker run --name er-mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=er-sols -d -p 3306:3306 mysql:5.7.22
```

Run/Debug the service and you're good to go.
